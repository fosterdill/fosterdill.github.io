(function (root) {
  var SpaceGame = root.SpaceGame = (root.SpaceGame || {});

  var BaddieGenerator = SpaceGame.BaddieGenerator = function (canvas) {
    this.baddieCount = 0;
    this.canvas = canvas;
  };
  
  _.extend(BaddieGenerator.prototype, {
    MAX_BADDIES: 8,

    remove: function (num) {
      this.baddieCount -= num;
    },

    wave: function (side, orient) {
      var baddies = [];
      if (this.baddieCount + 1 <= this.MAX_BADDIES) {
        baddies.push(this.single(side, orient));
      }
      return baddies;
    },

    single: function (side, orient) {
      var baddie = null;
      var randNum = Math.random();
      var orientation;
      var originalOrientation;
      var position;
      var velocity;
      var halfWidth = this.canvas.width / 2;
      var halfHeight = this.canvas.height / 2;
        switch (side) {
          case 'top':
            position = [randNum * (this.canvas.width) - halfWidth, 
                        -(this.canvas.height / 2)];
            velocity = [0, Math.random() * 2 + 1];
            orientation = (orient % 4);
            originalOrientation = 0;

            break;
          case 'right':
            position = [this.canvas.width / 2,
                        (this.canvas.height) * randNum - halfHeight];
            velocity = [-2 * Math.random() - 2, 0];
            velocity = [-Math.random() * 2 - 1, 0]
            orientation = (orient % 4) + 1;
            originalOrientation = 1;
            break;
          case 'left':
            position = [-(this.canvas.width / 2),
                        (this.canvas.height) * randNum - halfHeight];
            velocity = [Math.random() * 2 + 1, 0];
            orientation = (orient % 4) - 1;
            originalOrientation = -1;
            break;
        }
        baddie = new SpaceGame.Enemy(
          position,
          velocity,
          'images/enemy_' + side + '.png',
          orientation,
          originalOrientation
        );
        this.baddieCount += 1;
      return baddie;
    }
  });
}(this));

(function (root) {
  var SpaceGame = root.SpaceGame = (root.SpaceGame || {});

  var MovingObject = SpaceGame.MovingObject = function (pos, vel, img) {
    this.pos = pos;
    this.vel = vel;

    if (img) this.setImage(img);
  };

  _.extend(MovingObject.prototype, {
    move: function () {
      this.pos[0] += this.vel[0];
      this.pos[1] += this.vel[1];
    },

    show: function (canvas, ctx) {
      if (this.img) {
        ctx.drawImage(
          this.getImage(), 
          this.pos[0],
          this.pos[1]
        );
      } else {
        this.drawPath(canvas, ctx);
      }
    },

    isOutOfBounds: function (canvas) {
      var halfWidth = canvas.width / 2;
      var halfHeight = canvas.height / 2;

      if (this.type != 'ship' && this.type != 'shot') {
        return (this.pos[0] > halfWidth || this.pos[0] < -halfWidth ||
                      this.pos[1] > halfHeight || this.pos[1] < -halfHeight);
      }
    },

    //Getters and setters
    setImage: function (img) {
      this.img = new Image();
      this.img.src = img;
    },

    getImage: function () {
      return this.img;
    },

    setVel: function (vel) {
      this.vel = vel;
    },

    getVel: function () {
      return this.vel;
    },

    setPos: function (vel) {
      this.pos = pos;
    },

    getPos: function () {
      return this.pos;
    }
  });
})(this);

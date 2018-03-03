package derBen.valueObjects {

	public class LED {
		public function LED(object:Object) {
			if (!object)
				return;
			var hscan:Object = object.hscan;
			if (!hscan)
				return;
			var vscan:Object = object.vscan;
			if (!vscan)
				return;
			index = object.index as int;
			hMax = hscan.maximum as Number;
			hMin = hscan.minimum as Number;
			vMax = vscan.maximum as Number;
			vMin = vscan.minimum as Number;
			if (hMax !== hMax)
				return;
			if (hMin !== hMin)
				return;
			if (vMax !== vMax)
				return;
			if (vMin !== vMin)
				return;
			valid = true;
		}

		public var hMax:Number;

		public var hMaxNew:Number;

		public var hMin:Number;

		public var hMinNew:Number;

		public var index:int;

		public var vMax:Number;

		public var vMaxNew:Number;

		public var vMin:Number;

		public var vMinNew:Number;

		public var valid:Boolean;

		public function setNewValuesTo(hMin:Number, hMax:Number, vMin:Number, vMax:Number):void {
			hMinNew = hMin;
			hMaxNew = hMax;
			vMinNew = vMin;
			vMaxNew = vMax;
		}

		public function toString():String {
			var string:String = '\t{\n\t\t"index" : ' + index + ',\n';
			string += '\t\t"hscan" : { "minimum" : ' + hMinNew.toFixed(4) + ', "maximum" : ' + hMaxNew.toFixed(4) + ' },\n';
			string += '\t\t"vscan" : { "minimum" : ' + vMinNew.toFixed(4) + ', "maximum" : ' + vMaxNew.toFixed(4) + ' }\n\t}';
			return string;
		}
	}
}

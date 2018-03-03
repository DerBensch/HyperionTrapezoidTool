package derBen.screens {
	import flash.desktop.Clipboard;
	import flash.desktop.ClipboardFormats;
	import flash.events.MouseEvent;
	import spark.components.Button;
	import spark.components.TextArea;
	import spark.components.TitleWindow;
	import spark.layouts.VerticalLayout;

	public class OutputWindow extends TitleWindow {
		public function OutputWindow(string:String) {
			this.string = string;

			var verticalLayout:VerticalLayout = new VerticalLayout();
			verticalLayout.padding = 10;
			verticalLayout.gap = 10;
			layout = verticalLayout;

			var copyButton:Button = new Button();
			copyButton.label = "Copy to clipboard";
			copyButton.addEventListener(MouseEvent.CLICK, copyButton_clickHandler);

			var textArea:TextArea = new TextArea();
			textArea.percentWidth = 100;
			textArea.percentHeight = 100;
			textArea.text = string;

			mxmlContent = [copyButton, textArea];
		}

		private var string:String;

		public function recalculateSize(width:Number, height:Number):void {
			this.width = width - 64;
			this.height = height - 64;

			x = Math.round((width - this.width) * 0.5);
			y = Math.round((height - this.height) * 0.5);
		}

		private function copyButton_clickHandler(event:MouseEvent):void {
			Clipboard.generalClipboard.setData(ClipboardFormats.TEXT_FORMAT, string);
		}
	}
}

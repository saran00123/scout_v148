.class Lcom/pilotlab/rollereye/CustomerView/PDFView$1;
.super Landroid/webkit/WebViewClient;
.source "PDFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/CustomerView/PDFView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/CustomerView/PDFView;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/CustomerView/PDFView;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/PDFView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/PDFView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 62
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\ndocument.getElementById(\"viewerContainer\").addEventListener(\'scroll\',function () {\nif(this.scrollHeight-this.scrollTop - this.clientHeight < 50){\nwindow.java.bottom(); \n}\nelse if(this.scrollTop==0){\nwindow.java.top(); \n}\nelse {\nwindow.java.scrolling(); \n}\n});"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

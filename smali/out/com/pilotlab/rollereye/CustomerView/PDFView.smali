.class public Lcom/pilotlab/rollereye/CustomerView/PDFView;
.super Landroid/webkit/WebView;
.source "PDFView.java"


# static fields
.field private static final PDFJS:Ljava/lang/String; = "file:///android_asset/pdf_js/web/viewer.html?file="


# instance fields
.field public isBottom:Z

.field public isTop:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/CustomerView/PDFView;->isTop:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/pilotlab/rollereye/CustomerView/PDFView;->isBottom:Z

    .line 32
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/PDFView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/CustomerView/PDFView;->isTop:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/pilotlab/rollereye/CustomerView/PDFView;->isBottom:Z

    .line 37
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/PDFView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/CustomerView/PDFView;->isTop:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/pilotlab/rollereye/CustomerView/PDFView;->isBottom:Z

    .line 42
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/PDFView;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    .line 51
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/PDFView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 55
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 56
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 59
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/PDFView$1;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/PDFView$1;-><init>(Lcom/pilotlab/rollereye/CustomerView/PDFView;)V

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/PDFView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 79
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/PDFView$2;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/PDFView$2;-><init>(Lcom/pilotlab/rollereye/CustomerView/PDFView;)V

    const-string v1, "java"

    invoke-virtual {p0, v0, v1}, Lcom/pilotlab/rollereye/CustomerView/PDFView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public loadLocalPDF(Ljava/lang/String;)V
    .registers 4

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/pdf_js/web/viewer.html?file=file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/PDFView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadOnlinePDF(Ljava/lang/String;)V
    .registers 4

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/pdf_js/web/viewer.html?file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/PDFView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 2

    .line 102
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 2

    .line 107
    invoke-super {p0, p1}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

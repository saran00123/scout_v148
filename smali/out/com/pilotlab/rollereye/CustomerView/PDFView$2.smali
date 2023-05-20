.class Lcom/pilotlab/rollereye/CustomerView/PDFView$2;
.super Ljava/lang/Object;
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

    .line 79
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/PDFView$2;->this$0:Lcom/pilotlab/rollereye/CustomerView/PDFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bottom()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/PDFView$2;->this$0:Lcom/pilotlab/rollereye/CustomerView/PDFView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pilotlab/rollereye/CustomerView/PDFView;->isBottom:Z

    const/4 v1, 0x0

    .line 83
    iput-boolean v1, v0, Lcom/pilotlab/rollereye/CustomerView/PDFView;->isTop:Z

    return-void
.end method

.method public scrolling()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/PDFView$2;->this$0:Lcom/pilotlab/rollereye/CustomerView/PDFView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/pilotlab/rollereye/CustomerView/PDFView;->isBottom:Z

    .line 89
    iput-boolean v1, v0, Lcom/pilotlab/rollereye/CustomerView/PDFView;->isTop:Z

    return-void
.end method

.method public top()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/PDFView$2;->this$0:Lcom/pilotlab/rollereye/CustomerView/PDFView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/pilotlab/rollereye/CustomerView/PDFView;->isBottom:Z

    const/4 v1, 0x1

    .line 95
    iput-boolean v1, v0, Lcom/pilotlab/rollereye/CustomerView/PDFView;->isTop:Z

    return-void
.end method

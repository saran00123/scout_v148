.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8$5;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;Landroid/webkit/JsResult;)V
    .registers 3

    .line 615
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8$5;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8$5;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 618
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8$5;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p2}, Landroid/webkit/JsResult;->cancel()V

    .line 619
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

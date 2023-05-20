.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$9;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->native2JS(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

.field final synthetic val$jsonCmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Ljava/lang/String;)V
    .registers 3

    .line 629
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$9;->val$jsonCmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 632
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$3200(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeCallJS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$9;->val$jsonCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$9$1;

    invoke-direct {v2, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$9$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$9;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

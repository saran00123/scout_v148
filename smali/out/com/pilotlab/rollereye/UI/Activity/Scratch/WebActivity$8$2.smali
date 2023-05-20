.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8$2;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;

.field final synthetic val$result:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;Landroid/webkit/JsPromptResult;)V
    .registers 3

    .line 586
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8$2;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8$2;->val$result:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 589
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8$2;->val$result:Landroid/webkit/JsPromptResult;

    invoke-virtual {p2}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 590
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$11;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->saveCodeRep(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Ljava/lang/String;)V
    .registers 3

    .line 780
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$11;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$11;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 783
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 784
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$11;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$11;->val$data:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$3300(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Ljava/lang/String;)V

    .line 785
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$11;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->finish()V

    return-void
.end method

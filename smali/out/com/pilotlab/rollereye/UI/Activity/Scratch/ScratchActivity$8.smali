.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$8;
.super Ljava/lang/Object;
.source "ScratchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->dialogCloudScratch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)V
    .registers 2

    .line 539
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 542
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 543
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    :cond_11
    return-void
.end method

.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5$3;
.super Ljava/lang/Object;
.source "ScratchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;Landroid/widget/EditText;)V
    .registers 3

    .line 482
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5$3;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5$3;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 2

    .line 485
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5$3;->val$et:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

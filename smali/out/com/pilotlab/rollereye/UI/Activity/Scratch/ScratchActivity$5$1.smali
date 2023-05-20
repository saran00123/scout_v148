.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5$1;
.super Ljava/lang/Object;
.source "ScratchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 465
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5$1;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 468
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5$1;->val$et:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_24

    .line 469
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_24

    .line 470
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;

    iget v1, v1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->val$position:I

    invoke-static {p2}, Lcom/pilotlab/rollereye/Utils/JCType;->MatchFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->reNameScratchFile(ILjava/lang/String;)V

    .line 471
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_24
    return-void
.end method

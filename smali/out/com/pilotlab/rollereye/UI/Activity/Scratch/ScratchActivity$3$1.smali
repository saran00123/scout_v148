.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3$1;
.super Ljava/lang/Object;
.source "ScratchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;)V
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 361
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
.class Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$7$1;
.super Ljava/lang/Object;
.source "CloudPreviewVideoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$7;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$7;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$7;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$7$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 309
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 310
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$7$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$7;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$1600(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)V

    return-void
.end method

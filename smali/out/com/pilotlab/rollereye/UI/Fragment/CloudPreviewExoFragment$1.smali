.class Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment$1;
.super Ljava/lang/Object;
.source "CloudPreviewExoFragment.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->initPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(I)V
    .registers 3

    if-nez p1, :cond_9

    .line 175
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->onButtonPressed(Z)V

    goto :goto_f

    .line 177
    :cond_9
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->onButtonPressed(Z)V

    :goto_f
    return-void
.end method

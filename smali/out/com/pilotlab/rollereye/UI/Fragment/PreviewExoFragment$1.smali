.class Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$1;
.super Ljava/lang/Object;
.source "PreviewExoFragment.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->initPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(I)V
    .registers 3

    if-nez p1, :cond_9

    .line 168
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->onButtonPressed(Z)V

    goto :goto_f

    .line 170
    :cond_9
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->onButtonPressed(Z)V

    :goto_f
    return-void
.end method

.class Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;
.super Ljava/lang/Object;
.source "PreviewExoFragment.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


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

    .line 176
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onEvents(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method public synthetic onExperimentalOffloadSchedulingEnabledChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onExperimentalOffloadSchedulingEnabledChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onExperimentalSleepingForOffloadChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onExperimentalSleepingForOffloadChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .registers 3

    if-eqz p1, :cond_e

    .line 216
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "isPlaying"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 218
    :cond_e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "is not Playing"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .registers 3
    .param p1    # Lcom/google/android/exoplayer2/MediaItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/Player$EventListener;ZI)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 4

    .line 208
    iget v0, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_25

    .line 209
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->access$400(Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "X"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_31

    .line 210
    :cond_25
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->access$400(Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f110063

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    :goto_31
    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_28

    const/4 v0, 0x4

    if-eq p1, v0, :cond_d

    goto :goto_7a

    .line 199
    :cond_d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "STATE_ENDED"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->access$200(Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->access$300(Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;)V

    goto :goto_7a

    .line 193
    :cond_28
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 194
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 195
    :cond_3d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->play()V

    .line 196
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "STATE_READY"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 187
    :cond_4e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "STATE_BUFFERING"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_7a

    .line 189
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    goto :goto_7a

    .line 184
    :cond_6f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "STATE_IDLE"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    :goto_7a
    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .registers 9

    .line 224
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 225
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 226
    :cond_15
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    const v1, 0x7f11003e

    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2$1;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2$1;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->access$502(Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 232
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->access$500(Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/Player$EventListener;ZI)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onShuffleModeEnabledChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onStaticMetadataChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onStaticMetadataChanged(Lcom/google/android/exoplayer2/Player$EventListener;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

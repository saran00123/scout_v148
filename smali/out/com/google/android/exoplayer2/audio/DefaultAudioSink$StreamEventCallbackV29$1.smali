.class Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

.field final synthetic val$this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)V
    .registers 3

    .line 1769
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;->val$this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataRequest(Landroid/media/AudioTrack;I)V
    .registers 3

    .line 1772
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p2, p2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$300(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Landroid/media/AudioTrack;

    move-result-object p2

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1773
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$400(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    move-result-object p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$500(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 1776
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$400(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink$Listener;->onOffloadBufferEmptying()V

    :cond_2f
    return-void
.end method

.method public onTearDown(Landroid/media/AudioTrack;)V
    .registers 3
    .param p1    # Landroid/media/AudioTrack;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1782
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$300(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Landroid/media/AudioTrack;

    move-result-object v0

    if-ne p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1783
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$400(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    move-result-object p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$500(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 1788
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$400(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink$Listener;->onOffloadBufferEmptying()V

    :cond_2f
    return-void
.end method

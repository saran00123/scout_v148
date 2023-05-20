.class Lcom/pilotlab/ffmpeg/MyAudioRecord$1;
.super Ljava/lang/Thread;
.source "MyAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/ffmpeg/MyAudioRecord;->startVoip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/ffmpeg/MyAudioRecord;


# direct methods
.method constructor <init>(Lcom/pilotlab/ffmpeg/MyAudioRecord;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord$1;->this$0:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 116
    monitor-enter p0

    const/16 v0, -0x13

    .line 118
    :try_start_3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 119
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord$1;->this$0:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    invoke-static {v0}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->access$000(Lcom/pilotlab/ffmpeg/MyAudioRecord;)I

    move-result v0

    new-array v0, v0, [B
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_73

    .line 121
    :try_start_e
    iget-object v1, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord$1;->this$0:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    invoke-static {v1}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->access$100(Lcom/pilotlab/ffmpeg/MyAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_17} :catch_67
    .catchall {:try_start_e .. :try_end_17} :catchall_73

    .line 130
    :try_start_17
    new-instance v1, Lcom/pilotlab/ffmpeg/AudioEncoder;

    iget-object v2, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord$1;->this$0:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    invoke-static {v2}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->access$300(Lcom/pilotlab/ffmpeg/MyAudioRecord;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/pilotlab/ffmpeg/AudioEncoder;-><init>(I)V

    .line 131
    :cond_22
    :goto_22
    iget-object v2, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord$1;->this$0:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    invoke-static {v2}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->access$200(Lcom/pilotlab/ffmpeg/MyAudioRecord;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 133
    iget-object v2, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord$1;->this$0:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    invoke-static {v2}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->access$400(Lcom/pilotlab/ffmpeg/MyAudioRecord;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_43

    .line 134
    iget-object v2, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord$1;->this$0:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    invoke-static {v2}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->access$100(Lcom/pilotlab/ffmpeg/MyAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v2

    iget-object v4, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord$1;->this$0:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    invoke-static {v4}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->access$000(Lcom/pilotlab/ffmpeg/MyAudioRecord;)I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/AudioRecord;->read([BII)I

    goto :goto_22

    .line 137
    :cond_43
    iget-object v2, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord$1;->this$0:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    invoke-static {v2}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->access$100(Lcom/pilotlab/ffmpeg/MyAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v2

    iget-object v4, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord$1;->this$0:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    invoke-static {v4}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->access$000(Lcom/pilotlab/ffmpeg/MyAudioRecord;)I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_22

    .line 140
    invoke-virtual {v1, v0}, Lcom/pilotlab/ffmpeg/AudioEncoder;->offerEncoder([B)V

    goto :goto_22

    .line 143
    :cond_5a
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord$1;->this$0:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    invoke-static {v0}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->access$500(Lcom/pilotlab/ffmpeg/MyAudioRecord;)V

    .line 144
    invoke-virtual {v1}, Lcom/pilotlab/ffmpeg/AudioEncoder;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_62} :catch_65
    .catchall {:try_start_17 .. :try_end_62} :catchall_63

    goto :goto_65

    :catchall_63
    move-exception v0

    .line 147
    :try_start_64
    throw v0

    .line 151
    :catch_65
    :goto_65
    monitor-exit p0

    return-void

    :catch_67
    move-exception v0

    .line 124
    iget-object v1, p0, Lcom/pilotlab/ffmpeg/MyAudioRecord$1;->this$0:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->access$202(Lcom/pilotlab/ffmpeg/MyAudioRecord;Z)Z

    .line 125
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 126
    monitor-exit p0

    return-void

    :catchall_73
    move-exception v0

    .line 151
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_64 .. :try_end_75} :catchall_73

    throw v0
.end method

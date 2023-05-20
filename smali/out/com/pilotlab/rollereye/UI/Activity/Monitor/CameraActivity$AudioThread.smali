.class public Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$AudioThread;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V
    .registers 2

    .line 2242
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$AudioThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 2246
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$AudioThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$6500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Z

    move-result v0

    if-nez v0, :cond_bc

    .line 2247
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$AudioThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$6600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2248
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$AudioThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    iget-boolean v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->audioNeedBuffer:Z

    const/4 v2, 0x0

    const-wide/16 v3, 0xa

    if-eqz v0, :cond_34

    .line 2249
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$AudioThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$6700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$AudioThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$6800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I

    move-result v1

    if-lt v0, v1, :cond_30

    .line 2250
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$AudioThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    iput-boolean v2, v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->audioNeedBuffer:Z

    .line 2252
    :cond_30
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 2255
    :cond_34
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$AudioThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$6700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$AudioThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$6900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I

    move-result v5

    if-ge v0, v5, :cond_4a

    .line 2256
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$AudioThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    iput-boolean v1, v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->audioNeedBuffer:Z

    .line 2259
    :cond_4a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$AudioThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$6700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/AudioFrameMessage;

    if-eqz v0, :cond_73

    .line 2261
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$AudioThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/AudioFrameMessage;->getTimeStamp()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$7002(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;J)J

    .line 2262
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$AudioThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$7100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/ffmpeg/AudioDecoder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/AudioFrameMessage;->getData()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/AudioFrameMessage;->getData_length()I

    move-result v0

    invoke-virtual {v1, v3, v2, v0}, Lcom/pilotlab/ffmpeg/AudioDecoder;->decode([BII)V

    goto :goto_76

    .line 2264
    :cond_73
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 2266
    :goto_76
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$AudioThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio thread videoTimeStamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$AudioThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$7200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$AudioThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio thread audioTimeStamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$AudioThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$7000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b6} :catch_b8

    goto/16 :goto_0

    :catch_b8
    move-exception v0

    .line 2273
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_bc
    return-void
.end method

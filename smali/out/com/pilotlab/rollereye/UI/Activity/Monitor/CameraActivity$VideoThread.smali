.class public Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;
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
    name = "VideoThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V
    .registers 2

    .line 2278
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 2282
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$6500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Z

    move-result v0

    if-nez v0, :cond_134

    .line 2284
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$7300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 2285
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$7400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$6800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    if-lt v0, v2, :cond_2a

    .line 2286
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$7302(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Z)Z

    :cond_2a
    const-wide/16 v0, 0xa

    .line 2288
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 2291
    :cond_30
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$7400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$6900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_48

    .line 2292
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$7302(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Z)Z

    .line 2295
    :cond_48
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$7400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;

    if-eqz v0, :cond_0

    .line 2298
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getTimeStamp()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$7202(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;J)J

    .line 2299
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$7500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/ffmpeg/ffmpeg;

    move-result-object v4

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getData()[B

    move-result-object v5

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getData_length()I

    move-result v6

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)[B

    move-result-object v7

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)[I

    move-result-object v8

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)[B

    move-result-object v9

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)[I

    move-result-object v10

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)[B

    move-result-object v11

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)[I

    move-result-object v12

    invoke-virtual/range {v4 .. v12}, Lcom/pilotlab/ffmpeg/ffmpeg;->Decode([BI[B[I[B[I[B[I)I

    move-result v0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_be

    .line 2302
    new-array v0, v3, [I

    .line 2303
    new-array v2, v3, [I

    .line 2304
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v4}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$7500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/ffmpeg/ffmpeg;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/pilotlab/ffmpeg/ffmpeg;->Rest([I[I)I

    .line 2305
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 2306
    iput v3, v4, Landroid/os/Message;->what:I

    .line 2307
    aget v0, v0, v1

    iput v0, v4, Landroid/os/Message;->arg1:I

    .line 2308
    aget v0, v2, v1

    iput v0, v4, Landroid/os/Message;->arg2:I

    .line 2309
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$7600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_ca

    :cond_be
    if-ltz v0, :cond_ca

    .line 2311
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$7600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2314
    :cond_ca
    :goto_ca
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video thread videoTimeStamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$7200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video thread audioTimeStamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$7000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoData_Queue size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$7400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12e} :catch_130

    goto/16 :goto_0

    :catch_130
    move-exception v0

    .line 2324
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_134
    return-void
.end method

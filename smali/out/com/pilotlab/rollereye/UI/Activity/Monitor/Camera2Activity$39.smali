.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$39;
.super Ljava/lang/Object;
.source "Camera2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->tensorflowTracking_crop([B[B[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

.field final synthetic val$u_data:[B

.field final synthetic val$v_data:[B

.field final synthetic val$y_data:[B


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;[B[B[B)V
    .registers 5

    .line 2761
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$39;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$39;->val$y_data:[B

    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$39;->val$u_data:[B

    iput-object p4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$39;->val$v_data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 2764
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2765
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$39;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$39;->val$y_data:[B

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$39;->val$u_data:[B

    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$39;->val$v_data:[B

    invoke-static {v2, v3, v4, v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$9300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;[B[B[B)V

    .line 2766
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$39;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$9400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)[B

    move-result-object v3

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$39;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$9500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)[B

    move-result-object v4

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$39;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$9600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)[B

    move-result-object v5

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$39;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    iget v6, v2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$39;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    iget v7, v2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewHeight:I

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$39;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    iget v8, v2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$39;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    iget v2, v2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    div-int/lit8 v9, v2, 0x2

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$39;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$9100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)[I

    move-result-object v11

    const/4 v10, 0x1

    invoke-static/range {v3 .. v11}, Lcom/pilotlab/rollereye/tensorflow/env/ImageUtils;->convertYUV420ToARGB8888([B[B[BIIIII[I)V

    .line 2770
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2771
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$39;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v4}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "image time :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

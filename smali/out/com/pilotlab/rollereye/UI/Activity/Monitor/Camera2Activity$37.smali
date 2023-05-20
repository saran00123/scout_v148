.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$37;
.super Ljava/lang/Object;
.source "Camera2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->tensorflowTracking([B[B[B)V
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

    .line 2716
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$37;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$37;->val$y_data:[B

    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$37;->val$u_data:[B

    iput-object p4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$37;->val$v_data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 2719
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$37;->val$y_data:[B

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$37;->val$u_data:[B

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$37;->val$v_data:[B

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$37;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    iget v3, v3, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$37;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    iget v4, v4, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewHeight:I

    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$37;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    iget v5, v5, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$37;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    iget v6, v6, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$37;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v7}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$9100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)[I

    move-result-object v8

    const/4 v7, 0x1

    invoke-static/range {v0 .. v8}, Lcom/pilotlab/rollereye/tensorflow/env/ImageUtils;->convertYUV420ToARGB8888([B[B[BIIIII[I)V

    return-void
.end method

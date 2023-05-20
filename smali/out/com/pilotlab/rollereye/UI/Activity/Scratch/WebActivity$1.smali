.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$1;
.super Landroid/os/Handler;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 174
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 176
    :try_start_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 177
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_c8

    const/4 v2, 0x1

    if-eq v1, v2, :cond_be

    const/4 p1, 0x2

    if-eq v1, p1, :cond_5c

    const/16 p1, 0x105

    const-string v2, "data"

    if-eq v1, p1, :cond_52

    const/16 p1, 0x108

    if-eq v1, p1, :cond_47

    packed-switch v1, :pswitch_data_ce

    goto/16 :goto_cc

    .line 198
    :pswitch_1e
    :try_start_1e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    const-string v1, "list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "selected"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$1200(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Lorg/json/JSONArray;Ljava/lang/String;)V

    goto/16 :goto_cc

    .line 195
    :pswitch_31
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$1100(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Ljava/lang/String;)V

    goto/16 :goto_cc

    .line 192
    :pswitch_3c
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Ljava/lang/String;)V

    goto/16 :goto_cc

    .line 204
    :cond_47
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$1300(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Ljava/lang/String;)V

    goto/16 :goto_cc

    .line 201
    :cond_52
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$1300(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Ljava/lang/String;)V

    goto :goto_cc

    .line 184
    :cond_5c
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Z

    move-result p1

    if-nez p1, :cond_74

    .line 185
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$102(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Z)Z

    .line 186
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    :cond_74
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)[I

    move-result-object v1

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)[B

    move-result-object v1

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {v4}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)[I

    move-result-object v4

    aget v4, v4, v3

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {v4}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {v5}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)[I

    move-result-object v5

    aget v3, v5, v3

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-virtual {p1, v0, v1, v3}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->update([B[B[B)V

    .line 189
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->setRenderShowPic(Z)V

    goto :goto_cc

    .line 179
    :cond_be
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 180
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 181
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {v1, v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;II)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_c7} :catch_c8

    goto :goto_cc

    :catch_c8
    move-exception p1

    .line 209
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_cc
    return-void

    nop

    :pswitch_data_ce
    .packed-switch 0x100
        :pswitch_3c
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method

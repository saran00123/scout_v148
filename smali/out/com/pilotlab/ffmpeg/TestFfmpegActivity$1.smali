.class Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;
.super Ljava/lang/Thread;
.source "TestFfmpegActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->play(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

.field final synthetic val$player:Lcom/pilotlab/ffmpeg/ffmpeg;


# direct methods
.method constructor <init>(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;Lcom/pilotlab/ffmpeg/ffmpeg;)V
    .registers 3

    .line 145
    iput-object p1, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    iput-object p2, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->val$player:Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    move-object/from16 v1, p0

    const-string v0, ""

    .line 147
    iget-object v2, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->val$player:Lcom/pilotlab/ffmpeg/ffmpeg;

    iget-object v3, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-static {v3}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$000(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)I

    move-result v3

    iget-object v4, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-static {v4}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$100(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/pilotlab/ffmpeg/ffmpeg;->DecoderInit(II)I

    .line 148
    iget-object v2, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-static {v2}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$200(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    move-result-object v2

    iget-object v3, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-static {v3}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$000(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)I

    move-result v3

    iget-object v4, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-static {v4}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$100(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->updateRenderWidthHeight(II)V

    .line 149
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-static {v3}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$300(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1d3

    const/4 v3, 0x0

    .line 153
    :try_start_3c
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_1b7
    .catchall {:try_start_3c .. :try_end_41} :catchall_1b3

    .line 155
    :try_start_41
    invoke-static {}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$400()I

    move-result v2

    new-array v2, v2, [B

    const/16 v3, 0x2800

    .line 159
    new-array v3, v3, [B

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v5, 0x0

    :cond_4f
    move v6, v5

    .line 163
    :goto_50
    iget-object v7, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-static {v7}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$500(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)Z

    move-result v7

    if-nez v7, :cond_1a9

    .line 164
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v7

    const/4 v8, 0x1

    if-lez v7, :cond_1a1

    .line 165
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    add-int v9, v6, v7

    .line 167
    invoke-static {}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$400()I

    move-result v10

    if-ge v9, v10, :cond_4f

    .line 169
    invoke-static {v3, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget-object v6, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-static {v6, v2, v5, v9}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$600(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;[BII)I

    move-result v6

    :goto_74
    if-ltz v6, :cond_19e

    .line 174
    iget-object v7, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-static {v7, v2, v6}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$700(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;[BI)Z

    move-result v7

    if-eqz v7, :cond_19e

    .line 176
    iget-object v7, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    iget-object v10, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-static {v10}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$800(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)I

    move-result v10

    add-int/2addr v10, v6

    invoke-static {v7, v2, v10, v9}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$600(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;[BII)I

    move-result v7

    if-lez v7, :cond_19a

    .line 178
    iget-object v10, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-static {v10, v2, v7}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$700(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;[BI)Z

    move-result v10

    if-eqz v10, :cond_19a

    sub-int v10, v7, v6

    .line 180
    new-array v12, v10, [B

    .line 181
    invoke-static {v2, v6, v12, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    new-array v6, v8, [I

    .line 183
    new-array v10, v8, [I

    .line 184
    new-array v15, v8, [I

    .line 185
    iget-object v11, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->val$player:Lcom/pilotlab/ffmpeg/ffmpeg;

    array-length v13, v12

    iget-object v14, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-static {v14}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$900(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)[B

    move-result-object v14

    iget-object v8, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-static {v8}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$1000(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)[B

    move-result-object v16

    iget-object v8, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-static {v8}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$1100(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)[B

    move-result-object v18

    move-object v8, v15

    move-object v15, v6

    move-object/from16 v17, v10

    move-object/from16 v19, v8

    invoke-virtual/range {v11 .. v19}, Lcom/pilotlab/ffmpeg/ffmpeg;->Decode([BI[B[I[B[I[B[I)I

    move-result v11

    const-string v12, "y_len:"

    .line 186
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget v14, v6, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "u_len:"

    .line 187
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget v14, v10, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "v_len:"

    .line 188
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget v14, v8, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, -0x2

    if-ne v11, v12, :cond_149

    const/4 v11, 0x1

    .line 190
    new-array v12, v11, [I

    .line 191
    new-array v13, v11, [I

    .line 192
    iget-object v11, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->val$player:Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-virtual {v11, v12, v13}, Lcom/pilotlab/ffmpeg/ffmpeg;->Rest([I[I)I

    .line 193
    iget-object v11, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-static {v11}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$200(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    move-result-object v11

    aget v14, v12, v5

    aget v15, v13, v5

    invoke-virtual {v11, v14, v15}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->updateRenderWidthHeight(II)V

    const-string v11, "n_Width:"

    .line 194
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    aget v12, v12, v5

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "n_Heigh:"

    .line 195
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget v13, v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_149
    iget-object v11, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-static {v11}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$200(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    move-result-object v11

    iget-object v12, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-static {v12}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$900(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)[B

    move-result-object v12

    aget v6, v6, v5

    invoke-static {v12, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    iget-object v12, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-static {v12}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$1000(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)[B

    move-result-object v12

    aget v10, v10, v5

    invoke-static {v12, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v10

    iget-object v12, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-static {v12}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$1100(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)[B

    move-result-object v12

    aget v8, v8, v5

    invoke-static {v12, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    invoke-virtual {v11, v6, v10, v8}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->update([B[B[B)V

    .line 200
    iget-object v6, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-static {v6}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$200(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->setRenderShowPic(Z)V

    .line 202
    invoke-static {v2, v7, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 203
    array-length v7, v6

    invoke-static {v6, v5, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    array-length v6, v6

    const-wide/16 v7, 0x28

    .line 207
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 211
    iget-object v7, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-static {v7, v2, v5, v6}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$600(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;[BII)I

    move-result v7

    move v9, v6

    move v6, v7

    goto :goto_19b

    :cond_19a
    const/4 v6, -0x1

    :goto_19b
    const/4 v8, 0x1

    goto/16 :goto_74

    :cond_19e
    move v6, v9

    goto/16 :goto_50

    .line 223
    :cond_1a1
    iget-object v7, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->this$0:Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->access$502(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;Z)Z
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_1a7} :catch_1b0
    .catchall {:try_start_41 .. :try_end_1a7} :catchall_1ad

    goto/16 :goto_50

    .line 231
    :cond_1a9
    :try_start_1a9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1ac
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1ac} :catch_1c1

    goto :goto_1d3

    :catchall_1ad
    move-exception v0

    move-object v2, v0

    goto :goto_1c7

    :catch_1b0
    move-exception v0

    move-object v3, v4

    goto :goto_1b8

    :catchall_1b3
    move-exception v0

    move-object v2, v0

    move-object v4, v3

    goto :goto_1c7

    :catch_1b7
    move-exception v0

    .line 227
    :goto_1b8
    :try_start_1b8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1bb
    .catchall {:try_start_1b8 .. :try_end_1bb} :catchall_1b3

    if-eqz v3, :cond_1d3

    .line 231
    :try_start_1bd
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1c0
    .catch Ljava/io/IOException; {:try_start_1bd .. :try_end_1c0} :catch_1c1

    goto :goto_1d3

    :catch_1c1
    move-exception v0

    move-object v2, v0

    .line 233
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d3

    :goto_1c7
    if-eqz v4, :cond_1d2

    .line 231
    :try_start_1c9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1cc} :catch_1cd

    goto :goto_1d2

    :catch_1cd
    move-exception v0

    move-object v3, v0

    .line 233
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 234
    :cond_1d2
    :goto_1d2
    throw v2

    .line 240
    :cond_1d3
    :goto_1d3
    iget-object v0, v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->val$player:Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-virtual {v0}, Lcom/pilotlab/ffmpeg/ffmpeg;->DecoderRelease()I

    return-void
.end method

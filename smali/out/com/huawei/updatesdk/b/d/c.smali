.class public Lcom/huawei/updatesdk/b/d/c;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/updatesdk/b/d/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljavax/net/ssl/HttpsURLConnection;

.field private c:Z

.field private d:Lcom/huawei/updatesdk/b/d/b;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/huawei/updatesdk/b/d/b;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/updatesdk/b/d/c;->c:Z

    new-instance v0, Lcom/huawei/updatesdk/b/d/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/updatesdk/b/d/c$b;-><init>(Lcom/huawei/updatesdk/b/d/c$a;)V

    iput-object v0, p0, Lcom/huawei/updatesdk/b/d/c;->e:Landroid/os/Handler;

    iput-object p1, p0, Lcom/huawei/updatesdk/b/d/c;->d:Lcom/huawei/updatesdk/b/d/b;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/b/d/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p1}, Lcom/huawei/updatesdk/b/d/b;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/updatesdk/b/d/c;->a:Ljava/lang/String;

    :cond_20
    return-void
.end method

.method static synthetic a(Lcom/huawei/updatesdk/b/d/c;)Ljavax/net/ssl/HttpsURLConnection;
    .registers 1

    iget-object p0, p0, Lcom/huawei/updatesdk/b/d/c;->b:Ljavax/net/ssl/HttpsURLConnection;

    return-object p0
.end method

.method private a(IJLjava/lang/String;I)V
    .registers 7

    new-instance v0, Lcom/huawei/updatesdk/b/d/b;

    invoke-direct {v0}, Lcom/huawei/updatesdk/b/d/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/huawei/updatesdk/b/d/b;->a(I)V

    invoke-virtual {v0, p2, p3}, Lcom/huawei/updatesdk/b/d/b;->a(J)V

    invoke-virtual {v0, p4}, Lcom/huawei/updatesdk/b/d/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/updatesdk/b/d/c;->e:Landroid/os/Handler;

    if-nez p1, :cond_13

    return-void

    :cond_13
    invoke-virtual {p1, p5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(Lcom/huawei/updatesdk/b/d/b;Ljava/lang/String;)V
    .registers 8

    const-string v0, "Close FileOutputStream failed!"

    const-string v1, "DownloadMarketTask"

    if-eqz p1, :cond_98

    invoke-virtual {p1}, Lcom/huawei/updatesdk/b/d/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto/16 :goto_98

    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/appmarket.apk"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_29
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_2e} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_4f
    .catchall {:try_start_29 .. :try_end_2e} :catchall_4d

    :try_start_2e
    invoke-direct {p0, p1, v4, p2}, Lcom/huawei/updatesdk/b/d/c;->a(Lcom/huawei/updatesdk/b/d/b;Ljava/io/OutputStream;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_40

    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/huawei/updatesdk/b/d/c;->e()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/huawei/updatesdk/a/a/d/d;->a(Ljava/io/File;)Z
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_40} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_40} :catch_47
    .catchall {:try_start_2e .. :try_end_40} :catchall_44

    :cond_40
    :try_start_40
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_8a

    goto :goto_8d

    :catchall_44
    move-exception p1

    move-object v3, v4

    goto :goto_8e

    :catch_47
    move-exception p1

    move-object v3, v4

    goto :goto_50

    :catch_4a
    move-exception p1

    move-object v3, v4

    goto :goto_6f

    :catchall_4d
    move-exception p1

    goto :goto_8e

    :catch_4f
    move-exception p1

    :goto_50
    :try_start_50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOWNLOAD market package Exception error:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_50 .. :try_end_68} :catchall_4d

    if-eqz v3, :cond_8d

    :goto_6a
    :try_start_6a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_8a

    goto :goto_8d

    :catch_6e
    move-exception p1

    :goto_6f
    :try_start_6f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOWNLOAD market package FileNotFoundException error:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_6f .. :try_end_87} :catchall_4d

    if-eqz v3, :cond_8d

    goto :goto_6a

    :catch_8a
    invoke-static {v1, v0}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8d
    :goto_8d
    return-void

    :goto_8e
    if-eqz v3, :cond_97

    :try_start_90
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_97

    :catch_94
    invoke-static {v1, v0}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    :goto_97
    throw p1

    :cond_98
    :goto_98
    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6

    const-string v0, "DownloadMarketTask"

    const-string v1, "downloadUrlToStream(String urlString,OutputStream outputStream) "

    if-eqz p1, :cond_21

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_21

    :catch_a
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    :goto_21
    if-eqz p2, :cond_3e

    :try_start_23
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_3e

    :catch_27
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method private a(Lcom/huawei/updatesdk/b/d/b;Ljava/io/OutputStream;Ljava/lang/String;)Z
    .registers 24

    move-object/from16 v7, p0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    :try_start_7
    invoke-static {}, Lcom/huawei/updatesdk/b/d/d;->a()Lcom/huawei/updatesdk/b/d/d;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/updatesdk/b/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/updatesdk/b/d/d;->a(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    iput-object v0, v7, Lcom/huawei/updatesdk/b/d/c;->b:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v0, v7, Lcom/huawei/updatesdk/b/d/c;->b:Ljavax/net/ssl/HttpsURLConnection;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_175
    .catchall {:try_start_7 .. :try_end_17} :catchall_172

    if-nez v0, :cond_3d

    iget-boolean v0, v7, Lcom/huawei/updatesdk/b/d/c;->c:Z

    if-eqz v0, :cond_24

    iget-object v5, v7, Lcom/huawei/updatesdk/b/d/c;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v6, 0x3

    goto :goto_2a

    :cond_24
    iget-object v5, v7, Lcom/huawei/updatesdk/b/d/c;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v6, 0x5

    :goto_2a
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/huawei/updatesdk/b/d/c;->a(IJLjava/lang/String;I)V

    invoke-direct {v7, v9, v9}, Lcom/huawei/updatesdk/b/d/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    :goto_32
    invoke-static {}, Lcom/huawei/updatesdk/b/g/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/huawei/updatesdk/b/d/c;->d()V

    return v8

    :cond_3d
    :try_start_3d
    iget-object v0, v7, Lcom/huawei/updatesdk/b/d/c;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    iget-object v0, v7, Lcom/huawei/updatesdk/b/d/c;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_48} :catch_175
    .catchall {:try_start_3d .. :try_end_48} :catchall_172

    const/16 v1, 0xc8

    if-eq v1, v0, :cond_5f

    const/16 v1, 0xce

    if-eq v1, v0, :cond_5f

    iget-boolean v0, v7, Lcom/huawei/updatesdk/b/d/c;->c:Z

    if-eqz v0, :cond_58

    iget-object v5, v7, Lcom/huawei/updatesdk/b/d/c;->a:Ljava/lang/String;

    const/4 v6, 0x3

    goto :goto_2a

    :cond_58
    iget-object v5, v7, Lcom/huawei/updatesdk/b/d/c;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v6, 0x5

    goto :goto_2a

    :cond_5f
    :try_start_5f
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/updatesdk/b/d/b;->e()J

    move-result-wide v10
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_63} :catch_175
    .catchall {:try_start_5f .. :try_end_63} :catchall_172

    :try_start_63
    new-instance v12, Ljava/io/BufferedInputStream;

    iget-object v0, v7, Lcom/huawei/updatesdk/b/d/c;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-direct {v12, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_70
    .catchall {:try_start_63 .. :try_end_70} :catchall_158

    :try_start_70
    new-instance v13, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v13, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_154

    :try_start_77
    new-array v0, v1, [B
    :try_end_79
    .catchall {:try_start_77 .. :try_end_79} :catchall_151

    const-wide/16 v14, 0x0

    move v6, v2

    move-wide v1, v14

    :goto_7d
    :try_start_7d
    invoke-virtual {v12, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_14b

    const/4 v4, -0x1

    if-eq v3, v4, :cond_c1

    :try_start_84
    invoke-virtual {v13, v0, v8, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_bd

    add-int/2addr v6, v3

    :try_start_88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v16, 0x3e8

    cmp-long v3, v3, v16

    if-lez v3, :cond_ba

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    int-to-long v1, v6

    cmp-long v1, v1, v10

    if-eqz v1, :cond_b3

    iget-object v5, v7, Lcom/huawei/updatesdk/b/d/c;->a:Ljava/lang/String;
    :try_end_a2
    .catchall {:try_start_88 .. :try_end_a2} :catchall_14b

    const/16 v18, 0x2

    move-object/from16 v1, p0

    move v2, v6

    move-wide v3, v10

    move/from16 v19, v6

    move/from16 v6, v18

    :try_start_ac
    invoke-direct/range {v1 .. v6}, Lcom/huawei/updatesdk/b/d/c;->a(IJLjava/lang/String;I)V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_b0

    goto :goto_b5

    :catchall_b0
    move-exception v0

    goto/16 :goto_14e

    :cond_b3
    move/from16 v19, v6

    :goto_b5
    move-wide/from16 v1, v16

    move/from16 v6, v19

    goto :goto_7d

    :cond_ba
    move/from16 v19, v6

    goto :goto_7d

    :catchall_bd
    move-exception v0

    move v2, v6

    goto/16 :goto_152

    :cond_c1
    :try_start_c1
    invoke-direct {v7, v12, v13}, Lcom/huawei/updatesdk/b/d/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c4} :catch_147
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_143

    int-to-long v0, v6

    cmp-long v0, v0, v10

    if-nez v0, :cond_f7

    cmp-long v0, v10, v14

    if-lez v0, :cond_f7

    :try_start_cd
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/updatesdk/b/d/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f7

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/updatesdk/b/d/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA-256"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lcom/huawei/updatesdk/a/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_e7} :catch_f1
    .catchall {:try_start_cd .. :try_end_e7} :catchall_ec

    if-eqz v0, :cond_f7

    const/4 v0, 0x1

    move v12, v0

    goto :goto_f8

    :catchall_ec
    move-exception v0

    move v2, v6

    move-object v12, v9

    goto/16 :goto_169

    :catch_f1
    move-exception v0

    move v2, v6

    move v12, v8

    move-wide v3, v10

    goto/16 :goto_177

    :cond_f7
    move v12, v8

    :goto_f8
    if-eqz v12, :cond_11e

    :try_start_fa
    iget-object v5, v7, Lcom/huawei/updatesdk/b/d/c;->a:Ljava/lang/String;
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_fc} :catch_116
    .catchall {:try_start_fa .. :try_end_fc} :catchall_10c

    const/4 v0, 0x4

    move-object/from16 v1, p0

    move v2, v6

    move-wide v3, v10

    move/from16 v19, v6

    move v6, v0

    :try_start_104
    invoke-direct/range {v1 .. v6}, Lcom/huawei/updatesdk/b/d/c;->a(IJLjava/lang/String;I)V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_107} :catch_10a
    .catchall {:try_start_104 .. :try_end_107} :catchall_108

    goto :goto_120

    :catchall_108
    move-exception v0

    goto :goto_10f

    :catch_10a
    move-exception v0

    goto :goto_119

    :catchall_10c
    move-exception v0

    move/from16 v19, v6

    :goto_10f
    move-wide v3, v10

    move v8, v12

    move/from16 v2, v19

    move-object v10, v9

    goto/16 :goto_1ab

    :catch_116
    move-exception v0

    move/from16 v19, v6

    :goto_119
    move-wide v3, v10

    move/from16 v2, v19

    goto/16 :goto_177

    :cond_11e
    move/from16 v19, v6

    :goto_120
    if-nez v12, :cond_135

    iget-boolean v0, v7, Lcom/huawei/updatesdk/b/d/c;->c:Z

    if-eqz v0, :cond_12a

    iget-object v5, v7, Lcom/huawei/updatesdk/b/d/c;->a:Ljava/lang/String;

    const/4 v6, 0x3

    goto :goto_12d

    :cond_12a
    iget-object v5, v7, Lcom/huawei/updatesdk/b/d/c;->a:Ljava/lang/String;

    const/4 v6, 0x5

    :goto_12d
    move-object/from16 v1, p0

    move/from16 v2, v19

    move-wide v3, v10

    invoke-direct/range {v1 .. v6}, Lcom/huawei/updatesdk/b/d/c;->a(IJLjava/lang/String;I)V

    :cond_135
    invoke-direct {v7, v9, v9}, Lcom/huawei/updatesdk/b/d/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-static {}, Lcom/huawei/updatesdk/b/g/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/huawei/updatesdk/b/d/c;->d()V

    return v12

    :catchall_143
    move-exception v0

    move/from16 v19, v6

    goto :goto_167

    :catch_147
    move-exception v0

    move/from16 v19, v6

    goto :goto_16c

    :catchall_14b
    move-exception v0

    move/from16 v19, v6

    :goto_14e
    move/from16 v2, v19

    goto :goto_152

    :catchall_151
    move-exception v0

    :goto_152
    move v6, v2

    goto :goto_15c

    :catchall_154
    move-exception v0

    move v6, v2

    move-object v13, v9

    goto :goto_15c

    :catchall_158
    move-exception v0

    move v6, v2

    move-object v12, v9

    move-object v13, v12

    :goto_15c
    :try_start_15c
    invoke-direct {v7, v12, v13}, Lcom/huawei/updatesdk/b/d/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_15f} :catch_16b
    .catchall {:try_start_15c .. :try_end_15f} :catchall_166

    :try_start_15f
    throw v0
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_160} :catch_163
    .catchall {:try_start_15f .. :try_end_160} :catchall_160

    :catchall_160
    move-exception v0

    move-object v12, v9

    goto :goto_168

    :catch_163
    move-exception v0

    move-object v12, v9

    goto :goto_16d

    :catchall_166
    move-exception v0

    :goto_167
    move-object v9, v13

    :goto_168
    move v2, v6

    :goto_169
    move-wide v3, v10

    goto :goto_1ac

    :catch_16b
    move-exception v0

    :goto_16c
    move-object v9, v13

    :goto_16d
    move v2, v6

    move-wide v3, v10

    move-object v10, v12

    move v12, v8

    goto :goto_178

    :catchall_172
    move-exception v0

    move-object v12, v9

    goto :goto_1ac

    :catch_175
    move-exception v0

    move v12, v8

    :goto_177
    move-object v10, v9

    :goto_178
    const-string v1, "DownloadMarketTask"

    :try_start_17a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadUrlToStream(String urlString,OutputStream outputStream) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_192
    .catchall {:try_start_17a .. :try_end_192} :catchall_1a9

    if-nez v12, :cond_1a4

    iget-boolean v0, v7, Lcom/huawei/updatesdk/b/d/c;->c:Z

    if-eqz v0, :cond_19c

    iget-object v5, v7, Lcom/huawei/updatesdk/b/d/c;->a:Ljava/lang/String;

    const/4 v6, 0x3

    goto :goto_19f

    :cond_19c
    iget-object v5, v7, Lcom/huawei/updatesdk/b/d/c;->a:Ljava/lang/String;

    const/4 v6, 0x5

    :goto_19f
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/huawei/updatesdk/b/d/c;->a(IJLjava/lang/String;I)V

    :cond_1a4
    invoke-direct {v7, v10, v9}, Lcom/huawei/updatesdk/b/d/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto/16 :goto_32

    :catchall_1a9
    move-exception v0

    move v8, v12

    :goto_1ab
    move-object v12, v10

    :goto_1ac
    if-nez v8, :cond_1be

    iget-boolean v1, v7, Lcom/huawei/updatesdk/b/d/c;->c:Z

    if-eqz v1, :cond_1b6

    iget-object v5, v7, Lcom/huawei/updatesdk/b/d/c;->a:Ljava/lang/String;

    const/4 v6, 0x3

    goto :goto_1b9

    :cond_1b6
    iget-object v5, v7, Lcom/huawei/updatesdk/b/d/c;->a:Ljava/lang/String;

    const/4 v6, 0x5

    :goto_1b9
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/huawei/updatesdk/b/d/c;->a(IJLjava/lang/String;I)V

    :cond_1be
    invoke-direct {v7, v12, v9}, Lcom/huawei/updatesdk/b/d/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-static {}, Lcom/huawei/updatesdk/b/g/b;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/huawei/updatesdk/b/d/c;->d()V

    throw v0
.end method

.method static synthetic a(Lcom/huawei/updatesdk/b/d/c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/huawei/updatesdk/b/d/c;->c:Z

    return p1
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/huawei/updatesdk/b/d/c;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/b/d/c;->b:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_7
    return-void
.end method

.method private static e()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/huawei/updatesdk/a/b/a/a;->c()Lcom/huawei/updatesdk/a/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/updatesdk/a/b/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_11

    return-object v2

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/updatesdk"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_34

    return-object v2

    :cond_34
    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3

    invoke-static {p0}, Lcom/huawei/updatesdk/b/g/b;->a(Landroid/os/AsyncTask;)V

    iget-object p1, p0, Lcom/huawei/updatesdk/b/d/c;->d:Lcom/huawei/updatesdk/b/d/b;

    invoke-static {}, Lcom/huawei/updatesdk/b/d/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/huawei/updatesdk/b/d/c;->a(Lcom/huawei/updatesdk/b/d/b;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huawei/updatesdk/b/d/c$a;

    invoke-direct {v1, p0}, Lcom/huawei/updatesdk/b/d/c$a;-><init>(Lcom/huawei/updatesdk/b/d/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/updatesdk/b/d/c;->e:Landroid/os/Handler;

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/huawei/updatesdk/b/d/c;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .registers 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    invoke-virtual {p0}, Lcom/huawei/updatesdk/b/d/c;->a()V

    return-void
.end method

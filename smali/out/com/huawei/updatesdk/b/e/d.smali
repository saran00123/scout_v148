.class public Lcom/huawei/updatesdk/b/e/d;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/updatesdk/b/e/d;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/huawei/updatesdk/b/e/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/updatesdk/b/e/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .registers 12

    const-string p1, "cursor Execption"

    const-string v0, "GetAccountZoneTask"

    iget-object v1, p0, Lcom/huawei/updatesdk/b/e/d;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return-object v2

    :cond_e
    iget-object v1, p0, Lcom/huawei/updatesdk/b/e/d;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :try_start_14
    invoke-static {}, Lcom/huawei/updatesdk/a/b/a/a;->c()Lcom/huawei/updatesdk/a/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/updatesdk/a/b/a/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_28} :catch_6f
    .catchall {:try_start_14 .. :try_end_28} :catchall_6a

    if-eqz v1, :cond_5f

    :try_start_2a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5f

    const-string v3, "homecountry"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/huawei/updatesdk/service/otaupdate/f;->e()Lcom/huawei/updatesdk/service/otaupdate/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/huawei/updatesdk/service/otaupdate/f;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/updatesdk/b/b/a;->d()Lcom/huawei/updatesdk/b/b/a;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/updatesdk/b/e/d;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/huawei/updatesdk/b/b/a;->a(Ljava/lang/String;J)V

    invoke-static {}, Lcom/huawei/updatesdk/b/b/a;->d()Lcom/huawei/updatesdk/b/b/a;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/updatesdk/b/e/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/huawei/updatesdk/b/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    :catchall_58
    move-exception v2

    goto :goto_96

    :catch_5a
    move-exception v3

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_71

    :cond_5f
    const-string v3, "cursor == null: "

    invoke-static {v0, v3}, Lcom/huawei/updatesdk/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_64} :catch_5a
    .catchall {:try_start_2a .. :try_end_64} :catchall_58

    :goto_64
    if-eqz v1, :cond_95

    :try_start_66
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_90

    goto :goto_95

    :catchall_6a
    move-exception v1

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_96

    :catch_6f
    move-exception v3

    move-object v1, v2

    :goto_71
    :try_start_71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close cursor error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/huawei/updatesdk/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_71 .. :try_end_89} :catchall_6a

    if-eqz v2, :cond_94

    :try_start_8b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_94

    :catch_8f
    move-object v2, v1

    :catch_90
    invoke-static {v0, p1}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_95

    :cond_94
    :goto_94
    move-object v2, v1

    :cond_95
    :goto_95
    return-object v2

    :goto_96
    if-eqz v1, :cond_9f

    :try_start_98
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_9f

    :catch_9c
    invoke-static {v0, p1}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9f
    :goto_9f
    throw v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/huawei/updatesdk/b/e/d;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

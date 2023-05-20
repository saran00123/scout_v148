.class Lcom/xiaomi/push/ck;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic a:Lcom/xiaomi/push/ci$a;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/ci$a;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ci$a;

    iput-object p2, p0, Lcom/xiaomi/push/ck;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ci$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/ci$a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v1, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ci$a;

    iget-object v2, p0, Lcom/xiaomi/push/ck;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/ci$a;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_33
    .catchall {:try_start_1 .. :try_end_1c} :catchall_31

    :cond_1c
    if-eqz v0, :cond_21

    :try_start_1e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_21
    iget-object v0, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ci$a;

    iget-object v0, v0, Lcom/xiaomi/push/ci$a;->a:Lcom/xiaomi/push/cg;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ci$a;

    iget-object v0, v0, Lcom/xiaomi/push/ci$a;->a:Lcom/xiaomi/push/cg;

    invoke-virtual {v0}, Lcom/xiaomi/push/cg;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2e} :catch_2f

    goto :goto_4e

    :catch_2f
    move-exception v0

    goto :goto_4b

    :catchall_31
    move-exception v1

    goto :goto_56

    :catch_33
    move-exception v1

    :try_start_34
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_31

    if-eqz v0, :cond_3c

    :try_start_39
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3c
    iget-object v0, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ci$a;

    iget-object v0, v0, Lcom/xiaomi/push/ci$a;->a:Lcom/xiaomi/push/cg;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ci$a;

    iget-object v0, v0, Lcom/xiaomi/push/ci$a;->a:Lcom/xiaomi/push/cg;

    invoke-virtual {v0}, Lcom/xiaomi/push/cg;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception v0

    :goto_4b
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_4e
    :goto_4e
    iget-object v0, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ci$a;

    iget-object v1, p0, Lcom/xiaomi/push/ck;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/ci$a;->a(Landroid/content/Context;)V

    return-void

    :goto_56
    if-eqz v0, :cond_5b

    :try_start_58
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_5b
    iget-object v0, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ci$a;

    iget-object v0, v0, Lcom/xiaomi/push/ci$a;->a:Lcom/xiaomi/push/cg;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ci$a;

    iget-object v0, v0, Lcom/xiaomi/push/ci$a;->a:Lcom/xiaomi/push/cg;

    invoke-virtual {v0}, Lcom/xiaomi/push/cg;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_68} :catch_69

    goto :goto_6d

    :catch_69
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_6d
    :goto_6d
    iget-object v0, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ci$a;

    iget-object v2, p0, Lcom/xiaomi/push/ck;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/ci$a;->a(Landroid/content/Context;)V

    throw v1
.end method

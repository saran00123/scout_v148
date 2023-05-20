.class final Lcom/vivo/push/util/u;
.super Ljava/lang/Object;
.source "SettingsCache.java"

# interfaces
.implements Lcom/vivo/push/util/c;


# instance fields
.field private a:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/vivo/push/util/u;->a:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_1e

    :catch_7
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getString error by "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsCache"

    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return-object p2
.end method

.method public final a(Landroid/content/Context;)Z
    .registers 3

    .line 15
    invoke-static {}, Lcom/vivo/push/util/i;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/push/util/u;->a:Landroid/content/ContentResolver;

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/vivo/push/util/u;->a:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p2

    .line 39
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "putString error by "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SettingsCache"

    invoke-static {p2, p1}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

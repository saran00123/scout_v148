.class public final Lcom/vivo/push/c/b;
.super Lcom/vivo/push/e;
.source "ChangeNetPermissionTask.java"


# direct methods
.method public constructor <init>(Lcom/vivo/push/g;)V
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Lcom/vivo/push/e;-><init>(Lcom/vivo/push/g;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/vivo/push/g;)V
    .registers 5

    .line 21
    check-cast p1, Lcom/vivo/push/b/d;

    .line 24
    iget-object v0, p0, Lcom/vivo/push/c/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/push/util/r;->a(Landroid/content/Context;)Lcom/vivo/push/model/b;

    move-result-object v0

    .line 1018
    iget-boolean p1, p1, Lcom/vivo/push/b/d;->c:Z

    if-eqz p1, :cond_13

    .line 29
    :try_start_c
    iget-object p1, p0, Lcom/vivo/push/c/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/vivo/push/c/e;->a(Landroid/content/Context;)Z

    move-result p1

    goto :goto_19

    .line 31
    :cond_13
    iget-object p1, p0, Lcom/vivo/push/c/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/vivo/push/c/e;->b(Landroid/content/Context;)Z

    move-result p1

    :goto_19
    if-eqz p1, :cond_5a

    .line 34
    iget-object p1, p0, Lcom/vivo/push/c/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/vivo/push/util/r;->a(Landroid/content/Context;)Lcom/vivo/push/model/b;

    move-result-object p1

    if-eqz v0, :cond_34

    if-eqz p1, :cond_34

    .line 1023
    iget-object v1, p1, Lcom/vivo/push/model/b;->a:Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 2023
    iget-object v1, p1, Lcom/vivo/push/model/b;->a:Ljava/lang/String;

    .line 3023
    iget-object v2, v0, Lcom/vivo/push/model/b;->a:Ljava/lang/String;

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    return-void

    :cond_34
    if-eqz v0, :cond_48

    .line 4023
    iget-object v1, v0, Lcom/vivo/push/model/b;->a:Ljava/lang/String;

    if-eqz v1, :cond_48

    .line 39
    new-instance v1, Lcom/vivo/push/b/y;

    .line 5023
    iget-object v2, v0, Lcom/vivo/push/model/b;->a:Ljava/lang/String;

    .line 39
    invoke-direct {v1, v2}, Lcom/vivo/push/b/y;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object v2, p0, Lcom/vivo/push/c/b;->a:Landroid/content/Context;

    .line 6023
    iget-object v0, v0, Lcom/vivo/push/model/b;->a:Ljava/lang/String;

    .line 40
    invoke-static {v2, v0, v1}, Lcom/vivo/push/a/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/vivo/push/g;)V

    :cond_48
    if-eqz p1, :cond_5a

    .line 7023
    iget-object v0, p1, Lcom/vivo/push/model/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_5a

    .line 43
    new-instance v0, Lcom/vivo/push/b/f;

    invoke-direct {v0}, Lcom/vivo/push/b/f;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/vivo/push/c/b;->a:Landroid/content/Context;

    .line 8023
    iget-object p1, p1, Lcom/vivo/push/model/b;->a:Ljava/lang/String;

    .line 44
    invoke-static {v1, p1, v0}, Lcom/vivo/push/a/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/vivo/push/g;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_5a} :catch_5b

    :cond_5a
    return-void

    :catch_5b
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.class public final Lcom/vivo/push/c/g;
.super Lcom/vivo/push/c/o;
.source "OnDelTagsReceiveTask.java"


# direct methods
.method public constructor <init>(Lcom/vivo/push/g;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/vivo/push/c/o;-><init>(Lcom/vivo/push/g;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/push/c/g;)Landroid/content/Context;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/vivo/push/c/g;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/vivo/push/c/g;)Landroid/content/Context;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/vivo/push/c/g;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected final a(Lcom/vivo/push/g;)V
    .registers 15

    .line 26
    check-cast p1, Lcom/vivo/push/b/t;

    .line 1025
    iget-object v0, p1, Lcom/vivo/push/b/t;->c:Ljava/util/ArrayList;

    .line 1035
    iget-object v1, p1, Lcom/vivo/push/b/t;->d:Ljava/util/ArrayList;

    .line 30
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 33
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2029
    iget v8, p1, Lcom/vivo/push/b/s;->g:I

    .line 3019
    iget-object v11, p1, Lcom/vivo/push/b/s;->f:Ljava/lang/String;

    const-string v2, ""

    const-string v3, "tag/"

    const-string v4, "ali/"

    if-eqz v0, :cond_52

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 39
    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_44

    .line 40
    invoke-virtual {v7, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 41
    :cond_44
    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2a

    .line 42
    invoke-virtual {v7, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_52
    if-eqz v1, :cond_80

    .line 47
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_58
    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 48
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_72

    .line 49
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 50
    :cond_72
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 51
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 57
    :cond_80
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_8c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b8

    .line 58
    :cond_8c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_99

    .line 59
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/vivo/push/d;->b(Ljava/util/List;)V

    .line 61
    :cond_99
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    .line 4019
    iget-object v1, p1, Lcom/vivo/push/b/s;->f:Ljava/lang/String;

    .line 61
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a8

    const/16 v2, 0x2710

    goto :goto_a9

    :cond_a8
    move v2, v8

    :goto_a9
    invoke-virtual {v0, v1, v2}, Lcom/vivo/push/d;->a(Ljava/lang/String;I)V

    .line 62
    new-instance v0, Lcom/vivo/push/c/g$1;

    move-object v2, v0

    move-object v3, p0

    move v4, v8

    move-object v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/vivo/push/c/g$1;-><init>(Lcom/vivo/push/c/g;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vivo/push/f;->b(Ljava/lang/Runnable;)V

    .line 70
    :cond_b8
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_c4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_ec

    .line 71
    :cond_c4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d9

    .line 72
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    .line 4252
    iget-object v1, v0, Lcom/vivo/push/d;->i:Ljava/lang/String;

    invoke-interface {v9, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 4253
    invoke-virtual {v0}, Lcom/vivo/push/d;->d()V

    .line 74
    :cond_d9
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    .line 5019
    iget-object p1, p1, Lcom/vivo/push/b/s;->f:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, p1, v8}, Lcom/vivo/push/d;->a(Ljava/lang/String;I)V

    .line 75
    new-instance p1, Lcom/vivo/push/c/g$2;

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/vivo/push/c/g$2;-><init>(Lcom/vivo/push/c/g;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/vivo/push/f;->b(Ljava/lang/Runnable;)V

    :cond_ec
    return-void
.end method

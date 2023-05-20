.class final Lcom/xiaomi/push/fs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/fs$a;
    }
.end annotation


# direct methods
.method static a(Ljava/lang/Exception;)Lcom/xiaomi/push/fs$a;
    .registers 5

    invoke-static {p0}, Lcom/xiaomi/push/fs;->a(Ljava/lang/Exception;)V

    instance-of v0, p0, Lcom/xiaomi/push/gu;

    if-eqz v0, :cond_14

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/push/gu;

    invoke-virtual {v0}, Lcom/xiaomi/push/gu;->a()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/xiaomi/push/gu;->a()Ljava/lang/Throwable;

    move-result-object p0

    :cond_14
    new-instance v0, Lcom/xiaomi/push/fs$a;

    invoke-direct {v0}, Lcom/xiaomi/push/fs$a;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/xiaomi/push/gl;->a(Ljava/lang/Throwable;)I

    move-result p0

    if-eqz p0, :cond_5a

    sget-object v2, Lcom/xiaomi/push/fm;->l:Lcom/xiaomi/push/fm;

    invoke-virtual {v2}, Lcom/xiaomi/push/fm;->a()I

    move-result v2

    add-int/2addr v2, p0

    invoke-static {v2}, Lcom/xiaomi/push/fm;->a(I)Lcom/xiaomi/push/fm;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    :cond_5a
    iget-object p0, v0, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    if-nez p0, :cond_62

    sget-object p0, Lcom/xiaomi/push/fm;->t:Lcom/xiaomi/push/fm;

    iput-object p0, v0, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    :cond_62
    iget-object p0, v0, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    sget-object v2, Lcom/xiaomi/push/fm;->t:Lcom/xiaomi/push/fm;

    if-ne p0, v2, :cond_6a

    iput-object v1, v0, Lcom/xiaomi/push/fs$a;->a:Ljava/lang/String;

    :cond_6a
    return-object v0
.end method

.method private static a(Ljava/lang/Exception;)V
    .registers 1

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method static b(Ljava/lang/Exception;)Lcom/xiaomi/push/fs$a;
    .registers 6

    invoke-static {p0}, Lcom/xiaomi/push/fs;->a(Ljava/lang/Exception;)V

    instance-of v0, p0, Lcom/xiaomi/push/gu;

    if-eqz v0, :cond_14

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/push/gu;

    invoke-virtual {v0}, Lcom/xiaomi/push/gu;->a()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/xiaomi/push/gu;->a()Ljava/lang/Throwable;

    move-result-object p0

    :cond_14
    new-instance v0, Lcom/xiaomi/push/fs$a;

    invoke-direct {v0}, Lcom/xiaomi/push/fs$a;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_2b
    invoke-static {p0}, Lcom/xiaomi/push/gl;->a(Ljava/lang/Throwable;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_6d

    sget-object v3, Lcom/xiaomi/push/fm;->v:Lcom/xiaomi/push/fm;

    invoke-virtual {v3}, Lcom/xiaomi/push/fm;->a()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Lcom/xiaomi/push/fm;->a(I)Lcom/xiaomi/push/fm;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    iget-object v2, v0, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    sget-object v3, Lcom/xiaomi/push/fm;->G:Lcom/xiaomi/push/fm;

    if-ne v2, v3, :cond_71

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_71

    instance-of p0, p0, Ljava/net/UnknownHostException;

    if-eqz p0, :cond_71

    sget-object p0, Lcom/xiaomi/push/fm;->F:Lcom/xiaomi/push/fm;

    goto :goto_6f

    :cond_6d
    sget-object p0, Lcom/xiaomi/push/fm;->E:Lcom/xiaomi/push/fm;

    :goto_6f
    iput-object p0, v0, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    :cond_71
    iget-object p0, v0, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    sget-object v2, Lcom/xiaomi/push/fm;->D:Lcom/xiaomi/push/fm;

    if-eq p0, v2, :cond_83

    iget-object p0, v0, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    sget-object v2, Lcom/xiaomi/push/fm;->E:Lcom/xiaomi/push/fm;

    if-eq p0, v2, :cond_83

    iget-object p0, v0, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    sget-object v2, Lcom/xiaomi/push/fm;->G:Lcom/xiaomi/push/fm;

    if-ne p0, v2, :cond_85

    :cond_83
    iput-object v1, v0, Lcom/xiaomi/push/fs$a;->a:Ljava/lang/String;

    :cond_85
    return-object v0
.end method

.method static c(Ljava/lang/Exception;)Lcom/xiaomi/push/fs$a;
    .registers 5

    invoke-static {p0}, Lcom/xiaomi/push/fs;->a(Ljava/lang/Exception;)V

    instance-of v0, p0, Lcom/xiaomi/push/gu;

    if-eqz v0, :cond_14

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/push/gu;

    invoke-virtual {v0}, Lcom/xiaomi/push/gu;->a()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/xiaomi/push/gu;->a()Ljava/lang/Throwable;

    move-result-object p0

    :cond_14
    new-instance v0, Lcom/xiaomi/push/fs$a;

    invoke-direct {v0}, Lcom/xiaomi/push/fs$a;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_2b
    invoke-static {p0}, Lcom/xiaomi/push/gl;->a(Ljava/lang/Throwable;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x69

    if-eq v2, v3, :cond_7c

    const/16 v3, 0xc7

    if-eq v2, v3, :cond_79

    const/16 v3, 0x1f3

    if-eq v2, v3, :cond_6a

    const/16 v1, 0x6d

    if-eq v2, v1, :cond_67

    const/16 v1, 0x6e

    if-eq v2, v1, :cond_64

    sget-object v1, Lcom/xiaomi/push/fm;->P:Lcom/xiaomi/push/fm;

    :goto_61
    iput-object v1, v0, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    goto :goto_7f

    :cond_64
    sget-object v1, Lcom/xiaomi/push/fm;->N:Lcom/xiaomi/push/fm;

    goto :goto_61

    :cond_67
    sget-object v1, Lcom/xiaomi/push/fm;->M:Lcom/xiaomi/push/fm;

    goto :goto_61

    :cond_6a
    sget-object v2, Lcom/xiaomi/push/fm;->R:Lcom/xiaomi/push/fm;

    iput-object v2, v0, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    const-string v2, "Terminal binding condition encountered: item-not-found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    sget-object v1, Lcom/xiaomi/push/fm;->Q:Lcom/xiaomi/push/fm;

    goto :goto_61

    :cond_79
    sget-object v1, Lcom/xiaomi/push/fm;->O:Lcom/xiaomi/push/fm;

    goto :goto_61

    :cond_7c
    sget-object v1, Lcom/xiaomi/push/fm;->L:Lcom/xiaomi/push/fm;

    goto :goto_61

    :cond_7f
    :goto_7f
    iget-object v1, v0, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    sget-object v2, Lcom/xiaomi/push/fm;->O:Lcom/xiaomi/push/fm;

    if-eq v1, v2, :cond_91

    iget-object v1, v0, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    sget-object v2, Lcom/xiaomi/push/fm;->P:Lcom/xiaomi/push/fm;

    if-eq v1, v2, :cond_91

    iget-object v1, v0, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    sget-object v2, Lcom/xiaomi/push/fm;->R:Lcom/xiaomi/push/fm;

    if-ne v1, v2, :cond_93

    :cond_91
    iput-object p0, v0, Lcom/xiaomi/push/fs$a;->a:Ljava/lang/String;

    :cond_93
    return-object v0
.end method

.method static d(Ljava/lang/Exception;)Lcom/xiaomi/push/fs$a;
    .registers 5

    invoke-static {p0}, Lcom/xiaomi/push/fs;->a(Ljava/lang/Exception;)V

    instance-of v0, p0, Lcom/xiaomi/push/gu;

    if-eqz v0, :cond_14

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/push/gu;

    invoke-virtual {v0}, Lcom/xiaomi/push/gu;->a()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/xiaomi/push/gu;->a()Ljava/lang/Throwable;

    move-result-object p0

    :cond_14
    new-instance v0, Lcom/xiaomi/push/fs$a;

    invoke-direct {v0}, Lcom/xiaomi/push/fs$a;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/xiaomi/push/gl;->a(Ljava/lang/Throwable;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x69

    if-eq v2, v3, :cond_6e

    const/16 v3, 0xc7

    if-eq v2, v3, :cond_6b

    const/16 v3, 0x1f3

    if-eq v2, v3, :cond_5c

    const/16 v1, 0x6d

    if-eq v2, v1, :cond_59

    const/16 v1, 0x6e

    if-eq v2, v1, :cond_56

    sget-object v1, Lcom/xiaomi/push/fm;->ab:Lcom/xiaomi/push/fm;

    :goto_53
    iput-object v1, v0, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    goto :goto_71

    :cond_56
    sget-object v1, Lcom/xiaomi/push/fm;->Z:Lcom/xiaomi/push/fm;

    goto :goto_53

    :cond_59
    sget-object v1, Lcom/xiaomi/push/fm;->Y:Lcom/xiaomi/push/fm;

    goto :goto_53

    :cond_5c
    sget-object v2, Lcom/xiaomi/push/fm;->ad:Lcom/xiaomi/push/fm;

    iput-object v2, v0, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    const-string v2, "Terminal binding condition encountered: item-not-found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    sget-object v1, Lcom/xiaomi/push/fm;->ac:Lcom/xiaomi/push/fm;

    goto :goto_53

    :cond_6b
    sget-object v1, Lcom/xiaomi/push/fm;->aa:Lcom/xiaomi/push/fm;

    goto :goto_53

    :cond_6e
    sget-object v1, Lcom/xiaomi/push/fm;->X:Lcom/xiaomi/push/fm;

    goto :goto_53

    :cond_71
    :goto_71
    iget-object v1, v0, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    sget-object v2, Lcom/xiaomi/push/fm;->aa:Lcom/xiaomi/push/fm;

    if-eq v1, v2, :cond_83

    iget-object v1, v0, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    sget-object v2, Lcom/xiaomi/push/fm;->ab:Lcom/xiaomi/push/fm;

    if-eq v1, v2, :cond_83

    iget-object v1, v0, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    sget-object v2, Lcom/xiaomi/push/fm;->ad:Lcom/xiaomi/push/fm;

    if-ne v1, v2, :cond_85

    :cond_83
    iput-object p0, v0, Lcom/xiaomi/push/fs$a;->a:Ljava/lang/String;

    :cond_85
    return-object v0
.end method

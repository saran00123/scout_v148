.class public abstract Lcom/huawei/hms/hatool/y0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Context;)Lcom/huawei/hms/hatool/v0;
    .registers 5

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/huawei/hms/hatool/y0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    new-instance p1, Lcom/huawei/hms/hatool/v0;

    sget-object p2, Lcom/huawei/hms/hatool/w0;->b:Lcom/huawei/hms/hatool/w0;

    invoke-direct {p1, p2, v0}, Lcom/huawei/hms/hatool/v0;-><init>(Lcom/huawei/hms/hatool/w0;Ljava/lang/String;)V

    return-object p1

    :cond_14
    const-string v0, ""

    :cond_16
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2c

    invoke-virtual {p0, p2}, Lcom/huawei/hms/hatool/y0;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    new-instance p1, Lcom/huawei/hms/hatool/v0;

    sget-object p2, Lcom/huawei/hms/hatool/w0;->a:Lcom/huawei/hms/hatool/w0;

    invoke-direct {p1, p2, v0}, Lcom/huawei/hms/hatool/v0;-><init>(Lcom/huawei/hms/hatool/w0;Ljava/lang/String;)V

    return-object p1

    :cond_2c
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3c

    invoke-virtual {p0, p2}, Lcom/huawei/hms/hatool/y0;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/huawei/hms/hatool/v0;

    sget-object v0, Lcom/huawei/hms/hatool/w0;->c:Lcom/huawei/hms/hatool/w0;

    invoke-direct {p2, v0, p1}, Lcom/huawei/hms/hatool/v0;-><init>(Lcom/huawei/hms/hatool/w0;Ljava/lang/String;)V

    return-object p2

    :cond_3c
    new-instance p1, Lcom/huawei/hms/hatool/v0;

    sget-object p2, Lcom/huawei/hms/hatool/w0;->d:Lcom/huawei/hms/hatool/w0;

    invoke-direct {p1, p2, v0}, Lcom/huawei/hms/hatool/v0;-><init>(Lcom/huawei/hms/hatool/w0;Ljava/lang/String;)V

    return-object p1
.end method

.method public a(Landroid/content/Context;)Lcom/huawei/hms/hatool/v0;
    .registers 5

    invoke-virtual {p0}, Lcom/huawei/hms/hatool/y0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    new-instance p1, Lcom/huawei/hms/hatool/v0;

    sget-object v1, Lcom/huawei/hms/hatool/w0;->b:Lcom/huawei/hms/hatool/w0;

    invoke-direct {p1, v1, v0}, Lcom/huawei/hms/hatool/v0;-><init>(Lcom/huawei/hms/hatool/w0;Ljava/lang/String;)V

    return-object p1

    :cond_12
    invoke-virtual {p0}, Lcom/huawei/hms/hatool/y0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    new-instance p1, Lcom/huawei/hms/hatool/v0;

    sget-object v1, Lcom/huawei/hms/hatool/w0;->a:Lcom/huawei/hms/hatool/w0;

    invoke-direct {p1, v1, v0}, Lcom/huawei/hms/hatool/v0;-><init>(Lcom/huawei/hms/hatool/w0;Ljava/lang/String;)V

    return-object p1

    :cond_24
    invoke-virtual {p0}, Lcom/huawei/hms/hatool/y0;->e()Z

    move-result v0

    invoke-virtual {p0}, Lcom/huawei/hms/hatool/y0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    if-eqz v0, :cond_3c

    new-instance p1, Lcom/huawei/hms/hatool/v0;

    sget-object v0, Lcom/huawei/hms/hatool/w0;->c:Lcom/huawei/hms/hatool/w0;

    invoke-direct {p1, v0, v1}, Lcom/huawei/hms/hatool/v0;-><init>(Lcom/huawei/hms/hatool/w0;Ljava/lang/String;)V

    return-object p1

    :cond_3c
    new-instance p1, Lcom/huawei/hms/hatool/v0;

    sget-object v0, Lcom/huawei/hms/hatool/w0;->b:Lcom/huawei/hms/hatool/w0;

    invoke-virtual {p0, v1}, Lcom/huawei/hms/hatool/y0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/huawei/hms/hatool/v0;-><init>(Lcom/huawei/hms/hatool/w0;Ljava/lang/String;)V

    return-object p1

    :cond_48
    if-eqz v0, :cond_53

    invoke-virtual {p0}, Lcom/huawei/hms/hatool/y0;->d()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/hatool/y0;->a(ILandroid/content/Context;)Lcom/huawei/hms/hatool/v0;

    move-result-object p1

    return-object p1

    :cond_53
    invoke-virtual {p0}, Lcom/huawei/hms/hatool/y0;->d()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/hatool/y0;->b(ILandroid/content/Context;)Lcom/huawei/hms/hatool/v0;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final b(ILandroid/content/Context;)Lcom/huawei/hms/hatool/v0;
    .registers 5

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_18

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_18

    new-instance p1, Lcom/huawei/hms/hatool/v0;

    sget-object v0, Lcom/huawei/hms/hatool/w0;->b:Lcom/huawei/hms/hatool/w0;

    invoke-virtual {p0, p2}, Lcom/huawei/hms/hatool/y0;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/huawei/hms/hatool/y0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/huawei/hms/hatool/v0;-><init>(Lcom/huawei/hms/hatool/w0;Ljava/lang/String;)V

    return-object p1

    :cond_18
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2e

    invoke-virtual {p0, p2}, Lcom/huawei/hms/hatool/y0;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    new-instance p1, Lcom/huawei/hms/hatool/v0;

    sget-object p2, Lcom/huawei/hms/hatool/w0;->c:Lcom/huawei/hms/hatool/w0;

    invoke-direct {p1, p2, v0}, Lcom/huawei/hms/hatool/v0;-><init>(Lcom/huawei/hms/hatool/w0;Ljava/lang/String;)V

    return-object p1

    :cond_2e
    const-string v0, ""

    :cond_30
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_40

    invoke-virtual {p0, p2}, Lcom/huawei/hms/hatool/y0;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/huawei/hms/hatool/v0;

    sget-object v0, Lcom/huawei/hms/hatool/w0;->a:Lcom/huawei/hms/hatool/w0;

    invoke-direct {p2, v0, p1}, Lcom/huawei/hms/hatool/v0;-><init>(Lcom/huawei/hms/hatool/w0;Ljava/lang/String;)V

    return-object p2

    :cond_40
    new-instance p1, Lcom/huawei/hms/hatool/v0;

    sget-object p2, Lcom/huawei/hms/hatool/w0;->d:Lcom/huawei/hms/hatool/w0;

    invoke-direct {p1, p2, v0}, Lcom/huawei/hms/hatool/v0;-><init>(Lcom/huawei/hms/hatool/w0;Ljava/lang/String;)V

    return-object p1
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/huawei/hms/hatool/i;->c()Lcom/huawei/hms/hatool/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/hatool/i;->b()Lcom/huawei/hms/hatool/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/hatool/l;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {p1}, Lcom/huawei/hms/hatool/z0;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/hatool/l;->h(Ljava/lang/String;)V

    :cond_19
    invoke-virtual {v0}, Lcom/huawei/hms/hatool/l;->m()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public final c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/huawei/hms/hatool/i;->c()Lcom/huawei/hms/hatool/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/hatool/i;->b()Lcom/huawei/hms/hatool/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/hatool/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {p1}, Lcom/huawei/hms/hatool/z0;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/hatool/l;->l(Ljava/lang/String;)V

    :cond_19
    invoke-virtual {v0}, Lcom/huawei/hms/hatool/l;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract d()I
.end method

.method public final e()Z
    .registers 3

    invoke-static {}, Lcom/huawei/hms/hatool/i;->c()Lcom/huawei/hms/hatool/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/hatool/i;->b()Lcom/huawei/hms/hatool/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/hatool/l;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Lcom/huawei/hms/hatool/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/hatool/l;->e(Ljava/lang/String;)V

    :cond_19
    invoke-virtual {v0}, Lcom/huawei/hms/hatool/l;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final f()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/huawei/hms/hatool/i;->c()Lcom/huawei/hms/hatool/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/hatool/i;->b()Lcom/huawei/hms/hatool/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/hatool/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Lcom/huawei/hms/hatool/z0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/hatool/l;->m(Ljava/lang/String;)V

    :cond_19
    invoke-virtual {v0}, Lcom/huawei/hms/hatool/l;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

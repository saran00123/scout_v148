.class public abstract Lcom/huawei/hms/hatool/g;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p1, p2}, Lcom/huawei/hms/hatool/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1, p2}, Lcom/huawei/hms/hatool/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const-string v0, "hmsSdk"

    const-string v1, "getAndroidId(): to getConfigByType()"

    invoke-static {v0, v1}, Lcom/huawei/hms/hatool/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/hatool/g;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "oper"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/hatool/g;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v0, "maint"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/hatool/g;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    const-string v0, "diffprivacy"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/hatool/g;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    const-string v0, "preins"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/hatool/g;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_34
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getChannel(): Invalid type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "hmsSdk"

    invoke-static {p1, p0}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1, p2}, Lcom/huawei/hms/hatool/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-static {}, Lcom/huawei/hms/hatool/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-static {p0}, Lcom/huawei/hms/hatool/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/huawei/hms/hatool/i;->c()Lcom/huawei/hms/hatool/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/hatool/i;->b()Lcom/huawei/hms/hatool/l;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/huawei/hms/hatool/l;->b(Ljava/lang/String;)V

    :cond_1f
    invoke-static {}, Lcom/huawei/hms/hatool/b;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    const-string p0, ""

    return-object p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1, p2}, Lcom/huawei/hms/hatool/c;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1, p2}, Lcom/huawei/hms/hatool/c;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-static {}, Lcom/huawei/hms/hatool/i;->c()Lcom/huawei/hms/hatool/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/hatool/i;->b()Lcom/huawei/hms/hatool/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/hatool/l;->g()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_34

    invoke-static {p0}, Lcom/huawei/hms/hatool/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x100

    const-string v0, "channel"

    invoke-static {v0, p0, p2}, Lcom/huawei/hms/hatool/q0;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_31

    const-string p0, ""

    :cond_31
    invoke-virtual {p1, p0}, Lcom/huawei/hms/hatool/l;->d(Ljava/lang/String;)V

    :cond_34
    invoke-virtual {p1}, Lcom/huawei/hms/hatool/l;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

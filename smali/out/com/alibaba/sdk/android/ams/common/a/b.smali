.class public Lcom/alibaba/sdk/android/ams/common/a/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/app/Application;)V
    .registers 1

    if-nez p0, :cond_3

    return-void

    :cond_3
    sput-object p0, Lcom/alibaba/sdk/android/ams/common/a/a;->c:Landroid/app/Application;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_5

    sput-object p0, Lcom/alibaba/sdk/android/ams/common/a/a;->b:Landroid/content/Context;

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null applicationContext!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/alibaba/sdk/android/ams/common/a/a;->d:Z

    return-void
.end method

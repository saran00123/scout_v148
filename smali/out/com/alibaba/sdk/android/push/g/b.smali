.class public Lcom/alibaba/sdk/android/push/g/b;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

.field static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/sdk/android/push/f/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "MPS:CallbackConvert"

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getLogger(Ljava/lang/String;)Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/g/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/push/g/b;->b:Ljava/util/Map;

    sget-object v0, Lcom/alibaba/sdk/android/push/g/b;->b:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/alibaba/sdk/android/push/f/b;

    invoke-direct {v3, v1}, Lcom/alibaba/sdk/android/push/f/b;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/alibaba/sdk/android/push/CommonCallback;Lcom/alibaba/sdk/android/push/g/e;)V
    .registers 7

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3e

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/e;->b()I

    move-result v0

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/f;->a:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v1

    if-ne v0, v1, :cond_1d

    if-eqz p0, :cond_3d

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/e;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_3d

    :cond_1d
    if-eqz p0, :cond_2e

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/e;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/e;->b()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/e;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/push/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    return-void

    :cond_3e
    const/4 v1, 0x4

    if-ne v0, v1, :cond_78

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/e;->b()I

    move-result v0

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->a:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v1

    if-ne v0, v1, :cond_57

    if-eqz p0, :cond_77

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/e;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_77

    :cond_57
    if-eqz p0, :cond_68

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/e;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/e;->b()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/e;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/push/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    :goto_77
    return-void

    :cond_78
    sget-object v1, Lcom/alibaba/sdk/android/push/g/b;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/push/f/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/e;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/f/b;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/a;->i:Lcom/alibaba/sdk/android/push/common/a/a;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/e;->b()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_b5
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/e;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/push/f/b;->b(I)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/e;->b()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/alibaba/sdk/android/push/f/b;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/e;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/alibaba/sdk/android/push/g/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AMS]errorCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -- process:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " -- message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;)V

    if-eqz v2, :cond_110

    if-eqz p0, :cond_118

    invoke-interface {p0, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_118

    :cond_110
    if-eqz p0, :cond_115

    invoke-interface {p0, v1, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_115
    invoke-static {v1, p1}, Lcom/alibaba/sdk/android/push/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_118
    :goto_118
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/sdk/android/push/d/a;->a()Lcom/alibaba/sdk/android/push/d/a;

    move-result-object v1

    if-eqz v1, :cond_13

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, p1, v0}, Lcom/alibaba/sdk/android/push/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

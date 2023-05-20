.class Lcom/alibaba/sdk/android/push/g/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/ams/emas/push/IReportPushArrive;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/g/a;->b(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/ams/common/b/b;

.field final synthetic b:Lcom/alibaba/sdk/android/push/g/a;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/push/g/a;Lcom/alibaba/sdk/android/ams/common/b/b;)V
    .registers 3

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$1;->b:Lcom/alibaba/sdk/android/push/g/a;

    iput-object p2, p0, Lcom/alibaba/sdk/android/push/g/a$1;->a:Lcom/alibaba/sdk/android/ams/common/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportPushArrive(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/d/a;->a(Landroid/content/Context;)Lcom/alibaba/sdk/android/push/d/a;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$1;->a:Lcom/alibaba/sdk/android/ams/common/b/b;

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/alibaba/sdk/android/push/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_f
    return-void
.end method

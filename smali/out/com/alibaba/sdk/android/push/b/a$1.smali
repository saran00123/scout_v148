.class Lcom/alibaba/sdk/android/push/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/ams/emas/push/CommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/b/a;->a(IIIILcom/alibaba/sdk/android/push/CommonCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/push/CommonCallback;

.field final synthetic b:Lcom/alibaba/sdk/android/push/b/a;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/push/b/a;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/b/a$1;->b:Lcom/alibaba/sdk/android/push/b/a;

    iput-object p2, p0, Lcom/alibaba/sdk/android/push/b/a$1;->a:Lcom/alibaba/sdk/android/push/CommonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/a$1;->a:Lcom/alibaba/sdk/android/push/CommonCallback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/a$1;->a:Lcom/alibaba/sdk/android/push/CommonCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

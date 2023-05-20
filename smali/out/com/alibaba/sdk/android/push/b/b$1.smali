.class Lcom/alibaba/sdk/android/push/b/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/crashdefend/CrashDefendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/b/b;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/push/b/b;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/push/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/b/b$1;->a:Lcom/alibaba/sdk/android/push/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSdkClosed(I)V
    .registers 3

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "crash limit exceeds, close forever"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/b/b$1;->a:Lcom/alibaba/sdk/android/push/b/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Lcom/alibaba/sdk/android/push/b/b;Z)Z

    return-void
.end method

.method public onSdkStart(III)V
    .registers 4

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/b/b$1;->a:Lcom/alibaba/sdk/android/push/b/b;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/push/b/b;->a(Lcom/alibaba/sdk/android/push/b/b;Z)Z

    return-void
.end method

.method public onSdkStop(IIIJ)V
    .registers 6

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "crash limit exceeds"

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/b/b$1;->a:Lcom/alibaba/sdk/android/push/b/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/push/b/b;->a(Lcom/alibaba/sdk/android/push/b/b;Z)Z

    return-void
.end method

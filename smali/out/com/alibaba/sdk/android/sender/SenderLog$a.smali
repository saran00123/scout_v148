.class Lcom/alibaba/sdk/android/sender/SenderLog$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/sender/SenderLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;

    const-string v1, "Sender"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/alibaba/sdk/android/sender/SenderLog$a;->a:Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;

    return-void
.end method

.method static synthetic a()Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/sender/SenderLog$a;->a:Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;

    return-object v0
.end method

.class public Lcom/alibaba/sdk/android/push/common/util/c;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Ljava/lang/String; = "com.alibaba.sdk.android.push.common.util.c"

.field private static b:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/util/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getLogger(Ljava/lang/String;)Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/util/c;->b:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 1

    invoke-static {p0}, Lcom/alibaba/sdk/android/push/common/util/AppInfoUtil;->isMainProcess(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

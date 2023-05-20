.class public final enum Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;
.super Ljava/lang/Enum;
.source "ThirdPushManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/push/register/ThirdPushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThirdPushReportKeyword"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

.field public static final enum FCM:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

.field public static final enum HUAWEI:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

.field public static final enum MEIZU:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

.field public static final enum OPPO:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

.field public static final enum VIVO:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

.field public static final enum XIAOMI:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;


# instance fields
.field public thirdMsgKeyword:Ljava/lang/String;

.field public thirdSdkVersionPrefix:Ljava/lang/String;

.field public thirdTokenKeyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 82
    new-instance v6, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    const-string v1, "HUAWEI"

    const/4 v2, 0x0

    const-string v3, "HW_TOKEN"

    const-string v4, "huawei"

    const-string v5, "h_"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->HUAWEI:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    .line 83
    new-instance v0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    const-string v8, "XIAOMI"

    const/4 v9, 0x1

    const-string v10, "MI_TOKEN"

    const-string/jumbo v11, "xiaomi"

    const-string v12, "mi_"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->XIAOMI:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    .line 84
    new-instance v0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    const-string v2, "OPPO"

    const/4 v3, 0x2

    const-string v4, "OPPO_TOKEN"

    const-string v5, "oppo"

    const-string v6, "o_"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->OPPO:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    .line 85
    new-instance v0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    const-string v8, "VIVO"

    const/4 v9, 0x3

    const-string v10, "VIVO_TOKEN"

    const-string/jumbo v11, "vivo"

    const-string/jumbo v12, "v_"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->VIVO:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    .line 86
    new-instance v0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    const-string v2, "MEIZU"

    const/4 v3, 0x4

    const-string v4, "MZ_TOKEN"

    const-string v5, "meizu"

    const-string v6, "mz_"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->MEIZU:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    .line 87
    new-instance v0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    const-string v8, "FCM"

    const/4 v9, 0x5

    const-string v10, "gcm"

    const-string v11, "gcm"

    const-string v12, "g_"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->FCM:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    const/4 v0, 0x6

    .line 80
    new-array v0, v0, [Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    sget-object v1, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->HUAWEI:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->XIAOMI:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->OPPO:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->VIVO:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->MEIZU:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->FCM:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->$VALUES:[Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-object p3, p0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->thirdTokenKeyword:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->thirdMsgKeyword:Ljava/lang/String;

    .line 96
    iput-object p5, p0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->thirdSdkVersionPrefix:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;
    .registers 2

    .line 80
    const-class v0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;
    .registers 1

    .line 80
    sget-object v0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->$VALUES:[Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    return-object v0
.end method

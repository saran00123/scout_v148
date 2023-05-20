.class public final enum Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;
.super Ljava/lang/Enum;
.source "WorkflowConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/workflow/WorkflowConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "API"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;

.field public static final enum CANCELLATION_CODE:Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;

.field public static final enum CANCELLATION_DESCRIPTION:Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;

.field public static final enum RESPONSE_URL:Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;


# instance fields
.field public final val:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 16
    new-instance v0, Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;

    const/4 v1, 0x0

    const-string v2, "RESPONSE_URL"

    const-string v3, "com.amazon.identity.auth.device.workflow.responseUrl"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;->RESPONSE_URL:Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;

    .line 17
    new-instance v0, Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;

    const/4 v2, 0x1

    const-string v3, "CANCELLATION_CODE"

    const-string v4, "com.amazon.identity.auth.device.workflow.cancellationCode"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;->CANCELLATION_CODE:Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;

    .line 18
    new-instance v0, Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;

    const/4 v3, 0x2

    const-string v4, "CANCELLATION_DESCRIPTION"

    const-string v5, "com.amazon.identity.auth.device.workflow.cancellationDescription"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;->CANCELLATION_DESCRIPTION:Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;

    const/4 v0, 0x3

    .line 15
    new-array v0, v0, [Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;

    sget-object v4, Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;->RESPONSE_URL:Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;

    aput-object v4, v0, v1

    sget-object v1, Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;->CANCELLATION_CODE:Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;->CANCELLATION_DESCRIPTION:Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;->$VALUES:[Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;->val:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;
    .registers 2

    .line 15
    const-class v0, Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;
    .registers 1

    .line 15
    sget-object v0, Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;->$VALUES:[Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;

    return-object v0
.end method

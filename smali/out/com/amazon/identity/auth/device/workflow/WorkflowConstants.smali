.class public final Lcom/amazon/identity/auth/device/workflow/WorkflowConstants;
.super Ljava/lang/Object;
.source "WorkflowConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;,
        Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$OPTION;
    }
.end annotation


# static fields
.field public static final CANCELLATION_CODE_USER_TERMINATED:I = 0x0

.field private static final CONSTANT_PREFIX:Ljava/lang/String; = "com.amazon.identity.auth.device.workflow"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

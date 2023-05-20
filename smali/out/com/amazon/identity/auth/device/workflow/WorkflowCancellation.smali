.class public final Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation;
.super Ljava/lang/Object;
.source "WorkflowCancellation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation$Cause;
    }
.end annotation


# instance fields
.field private final cause:Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation$Cause;

.field private final description:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4

    .line 31
    sget-object v0, Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;->CANCELLATION_CODE:Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;->val:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation$Cause;->fromCode(I)Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation$Cause;

    move-result-object v0

    sget-object v1, Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;->CANCELLATION_DESCRIPTION:Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/workflow/WorkflowConstants$API;->val:Ljava/lang/String;

    .line 32
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-direct {p0, v0, p1}, Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation;-><init>(Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation$Cause;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation$Cause;Ljava/lang/String;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation;->cause:Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation$Cause;

    .line 37
    iput-object p2, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 61
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 62
    :cond_13
    check-cast p1, Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation;

    .line 63
    iget-object v2, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation;->cause:Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation$Cause;

    iget-object v3, p1, Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation;->cause:Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation$Cause;

    if-eq v2, v3, :cond_1c

    return v1

    .line 64
    :cond_1c
    iget-object v2, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation;->description:Ljava/lang/String;

    if-nez v2, :cond_25

    .line 65
    iget-object p1, p1, Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation;->description:Ljava/lang/String;

    if-eqz p1, :cond_2e

    return v1

    .line 66
    :cond_25
    iget-object p1, p1, Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation;->description:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    return v1

    :cond_2e
    return v0
.end method

.method public getCause()Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation$Cause;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation;->cause:Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation$Cause;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation;->description:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation;->cause:Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation$Cause;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation$Cause;->hashCode()I

    move-result v0

    :goto_b
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 53
    iget-object v2, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation;->description:Ljava/lang/String;

    if-nez v2, :cond_14

    goto :goto_18

    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_18
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation;->cause:Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation$Cause;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation$Cause;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation;->description:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s {cause=\'%s\', description=\'%s\'}"

    .line 72
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Landroidx/navigation/ActionOnlyNavDirections;
.super Ljava/lang/Object;
.source "ActionOnlyNavDirections.java"

# interfaces
.implements Landroidx/navigation/NavDirections;


# instance fields
.field private final mActionId:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Landroidx/navigation/ActionOnlyNavDirections;->mActionId:I

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

    if-eqz p1, :cond_20

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_20

    .line 58
    :cond_12
    check-cast p1, Landroidx/navigation/ActionOnlyNavDirections;

    .line 59
    invoke-virtual {p0}, Landroidx/navigation/ActionOnlyNavDirections;->getActionId()I

    move-result v2

    invoke-virtual {p1}, Landroidx/navigation/ActionOnlyNavDirections;->getActionId()I

    move-result p1

    if-eq v2, p1, :cond_1f

    return v1

    :cond_1f
    return v0

    :cond_20
    :goto_20
    return v1
.end method

.method public getActionId()I
    .registers 2

    .line 39
    iget v0, p0, Landroidx/navigation/ActionOnlyNavDirections;->mActionId:I

    return v0
.end method

.method public getArguments()Landroid/os/Bundle;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 69
    invoke-virtual {p0}, Landroidx/navigation/ActionOnlyNavDirections;->getActionId()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionOnlyNavDirections(actionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/navigation/ActionOnlyNavDirections;->getActionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

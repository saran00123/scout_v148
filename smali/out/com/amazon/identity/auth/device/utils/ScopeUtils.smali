.class public Lcom/amazon/identity/auth/device/utils/ScopeUtils;
.super Ljava/lang/Object;
.source "ScopeUtils.java"


# static fields
.field private static final STRING_SEPARATOR:Ljava/lang/String; = ","


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertScopeArrayToString([Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 15
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_1b

    .line 16
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_18

    const-string v2, ","

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 22
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertScopeStringToArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    const-string v0, ","

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getScopeNamesFromScopeArray([Lcom/amazon/identity/auth/device/dataobject/Scope;)[Ljava/lang/String;
    .registers 4

    .line 26
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 27
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 28
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/dataobject/Scope;->getScopeName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method

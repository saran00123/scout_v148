.class public Lcom/amazon/identity/auth/device/api/authorization/CodePairResult;
.super Ljava/lang/Object;
.source "CodePairResult.java"


# instance fields
.field private mUserCode:Ljava/lang/String;

.field private mVerificationUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/authorization/CodePairResult;->mUserCode:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/authorization/CodePairResult;->mVerificationUri:Ljava/lang/String;

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

    .line 33
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 34
    :cond_13
    check-cast p1, Lcom/amazon/identity/auth/device/api/authorization/CodePairResult;

    .line 35
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/CodePairResult;->mUserCode:Ljava/lang/String;

    if-nez v2, :cond_1e

    .line 36
    iget-object v2, p1, Lcom/amazon/identity/auth/device/api/authorization/CodePairResult;->mUserCode:Ljava/lang/String;

    if-eqz v2, :cond_27

    return v1

    .line 37
    :cond_1e
    iget-object v3, p1, Lcom/amazon/identity/auth/device/api/authorization/CodePairResult;->mUserCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    return v1

    .line 38
    :cond_27
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/CodePairResult;->mVerificationUri:Ljava/lang/String;

    if-nez v2, :cond_30

    .line 39
    iget-object p1, p1, Lcom/amazon/identity/auth/device/api/authorization/CodePairResult;->mVerificationUri:Ljava/lang/String;

    if-eqz p1, :cond_39

    return v1

    .line 40
    :cond_30
    iget-object p1, p1, Lcom/amazon/identity/auth/device/api/authorization/CodePairResult;->mVerificationUri:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    return v1

    :cond_39
    return v0
.end method

.method public getUserCode()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/CodePairResult;->mUserCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVerificationUri()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/CodePairResult;->mVerificationUri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 24
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/CodePairResult;->mUserCode:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 25
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/CodePairResult;->mVerificationUri:Ljava/lang/String;

    if-nez v2, :cond_14

    goto :goto_18

    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_18
    add-int/2addr v0, v1

    return v0
.end method

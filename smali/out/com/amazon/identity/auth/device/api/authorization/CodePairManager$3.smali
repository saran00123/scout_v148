.class final Lcom/amazon/identity/auth/device/api/authorization/CodePairManager$3;
.super Ljava/lang/Object;
.source "CodePairManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/identity/auth/device/api/authorization/Scope;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/identity/auth/device/api/authorization/Scope;Lcom/amazon/identity/auth/device/api/authorization/Scope;)I
    .registers 3

    .line 259
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/api/authorization/Scope;->getName()Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-interface {p2}, Lcom/amazon/identity/auth/device/api/authorization/Scope;->getName()Ljava/lang/String;

    move-result-object p2

    .line 262
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 257
    check-cast p1, Lcom/amazon/identity/auth/device/api/authorization/Scope;

    check-cast p2, Lcom/amazon/identity/auth/device/api/authorization/Scope;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager$3;->compare(Lcom/amazon/identity/auth/device/api/authorization/Scope;Lcom/amazon/identity/auth/device/api/authorization/Scope;)I

    move-result p1

    return p1
.end method

.class public Lcom/amazon/identity/auth/device/api/authorization/GetTokenResult;
.super Ljava/lang/Object;
.source "GetTokenResult.java"


# instance fields
.field private mAccessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/authorization/GetTokenResult;->mAccessToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/GetTokenResult;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

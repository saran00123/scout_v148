.class public abstract Lanet/channel/statist/StatObject;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeCommit()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

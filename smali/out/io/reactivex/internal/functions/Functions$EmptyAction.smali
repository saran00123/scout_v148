.class final Lio/reactivex/internal/functions/Functions$EmptyAction;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/functions/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EmptyAction"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "EmptyAction"

    return-object v0
.end method

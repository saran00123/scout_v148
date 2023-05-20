.class public final Lcom/vivo/push/b/g;
.super Lcom/vivo/push/g;
.source "InitCommand.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x65

    .line 11
    invoke-direct {p0, v0}, Lcom/vivo/push/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final b(Lcom/vivo/push/a;)V
    .registers 2

    return-void
.end method

.method protected final c(Lcom/vivo/push/a;)V
    .registers 2

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "InitCommand"

    return-object v0
.end method

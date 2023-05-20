.class interface abstract Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;
.super Ljava/lang/Object;
.source "InteractiveStateFragment.java"


# static fields
.field public static final TAG_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/identity/auth/device/interactive/InteractiveState;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;->TAG_ID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getApplicationContext()Ljava/lang/Object;
.end method

.method public abstract getFragment(Landroid/os/Bundle;)Ljava/lang/Object;
.end method

.method public abstract getParentActivity()Ljava/lang/Object;
.end method

.method public abstract getState()Lcom/amazon/identity/auth/device/interactive/InteractiveState;
.end method

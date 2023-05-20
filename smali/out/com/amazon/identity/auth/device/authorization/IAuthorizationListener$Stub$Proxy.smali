.class Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAuthorizationListener.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.amazon.identity.auth.device.authorization.IAuthorizationListener"

    return-object v0
.end method

.method public onCancel(Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.amazon.identity.auth.device.authorization.IAuthorizationListener"

    .line 169
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 171
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 175
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    :goto_1b
    iget-object v3, p0, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_38

    .line 178
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub;->getDefaultImpl()Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 179
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub;->getDefaultImpl()Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener;->onCancel(Landroid/os/Bundle;)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_42

    .line 185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 182
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_42

    .line 185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_42
    move-exception p1

    .line 185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 187
    throw p1
.end method

.method public onError(Lcom/amazon/identity/auth/device/IAuthError;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.amazon.identity.auth.device.authorization.IAuthorizationListener"

    .line 150
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    .line 151
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/IAuthError;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 152
    iget-object v2, p0, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_36

    .line 153
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub;->getDefaultImpl()Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 154
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub;->getDefaultImpl()Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener;->onError(Lcom/amazon/identity/auth/device/IAuthError;)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_40

    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 157
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_40

    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_40
    move-exception p1

    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 162
    throw p1
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.amazon.identity.auth.device.authorization.IAuthorizationListener"

    .line 125
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 127
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 131
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    :goto_1b
    iget-object v4, p0, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_37

    .line 134
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub;->getDefaultImpl()Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 135
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub;->getDefaultImpl()Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener;->onSuccess(Landroid/os/Bundle;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_41

    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 138
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_41

    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_41
    move-exception p1

    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    throw p1
.end method

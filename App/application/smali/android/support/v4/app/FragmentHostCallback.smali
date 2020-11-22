.class public abstract Landroid/support/v4/app/FragmentHostCallback;
.super Landroid/support/v4/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContext:Landroid/content/Context;

.field final mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;

.field private final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/FragmentContainer;-><init>()V

    .line 48
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 62
    iput-object p1, p0, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    const-string p1, "context == null"

    .line 63
    invoke-static {p2, p1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    const-string p1, "handler == null"

    .line 64
    invoke-static {p3, p1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Landroid/os/Handler;

    iput-object p3, p0, Landroid/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    .line 65
    iput p4, p0, Landroid/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    .line 57
    iget-object v0, p1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method getActivity()Landroid/app/Activity;
    .locals 0

    .line 190
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method getContext()Landroid/content/Context;
    .locals 0

    .line 195
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method getFragmentManagerImpl()Landroid/support/v4/app/FragmentManagerImpl;
    .locals 0

    .line 204
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    return-object p0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 0

    .line 200
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method abstract onAttachFragment(Landroid/support/v4/app/Fragment;)V
.end method

.method public abstract onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract onGetLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method public abstract onGetWindowAnimations()I
.end method

.method public abstract onHasWindowAnimations()Z
.end method

.method public abstract onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z
.end method

.method public abstract onSupportInvalidateOptionsMenu()V
.end method

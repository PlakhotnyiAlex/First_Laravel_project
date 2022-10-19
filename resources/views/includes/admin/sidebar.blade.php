<nav class="mt-2">
    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

        <li class="nav-header">Admin Panel</li>
        <li class="nav-item">
            <a href="{{ route('admin.post.index') }}" class="nav-link"><i class="fas fa-align-justify"></i>

                <p class="mx-2">
                    Posts
                    <span class="badge badge-info right">{{$postsCount}}</span>
                </p>
            </a>
        </li>

    </ul>
</nav>

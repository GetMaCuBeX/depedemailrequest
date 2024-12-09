<!-- ========== Left Sidebar Start ========== -->
<div class="left-side-menu">

    <div class="slimscroll-menu">

        <!--- Sidemenu -->
        <div id="sidebar-menu">
            <ul class="metismenu" id="side-menu">

                <!--<li class="menu-title">Navigation</li>-->

                <?php if (isset($_SESSION['username']) && $_SESSION['position'] === 'ADMIN'): ?>

                    <li>
                        <a href="javascript: void(0);" class="waves-effect">
                            <i class="mdi mdi-view-dashboard"></i>
                            <span>DEPED EMAIL</span>
                            <span class="badge badge-warning float-right"><?php echo isset($REQUEST_COUNT_ISDONE_FALSE) ? $REQUEST_COUNT_ISDONE_FALSE : ''; ?></span>
                        </a>
                        <ul class="nav-second-level" aria-expanded="false">
                            <li><a href="<?= base_url(); ?>jb_emailrequest/requ">Email Request</a></li>
                            <li><a href="<?= base_url(); ?>jb_emailrequest/request">All Request</a></li>

                            <li><a href="<?= base_url(); ?>jb_emailrequest/complete">Completed</a></li>

                        </ul>
                    </li>
                <?php else: ?> 
                    <li>
                        <a href="<?= base_url(); ?>jb_emailrequest/requ" class="waves-effect">
                            <i class="mdi mdi-view-dashboard"></i>
                            <span>EMAIL REQUEST</span>
                            <span class="badge badge-warning float-right"><?php echo isset($REQUEST_COUNT_ISDONE_FALSE) ? $REQUEST_COUNT_ISDONE_FALSE : ''; ?></span>
                        </a>
                    </li>

                <?php endif; ?> 






                <!--                <li>
                                    <a href="javascript: void(0);" class="waves-effect">
                                        <i class="mdi mdi-view-dashboard"></i>
                                        <span> COA </span>
                                        <span class="badge badge-info badge-pill float-right"> 3 </span>
                                    </a>
                                    <ul class="nav-second-level" aria-expanded="false">
                                        <li><a href="<?= base_url(); ?>jb_coa/index">PPE</a></li> 
                                    </ul>
                                    <ul class="nav-second-level" aria-expanded="false">
                                        <li><a href="<?= base_url(); ?>jb_coa/annexa">ANNEX A</a></li> 
                                    </ul>
                                    <ul class="nav-second-level" aria-expanded="false">
                                        <li><a href="<?= base_url(); ?>jb_coa/annexb">ANNEX B</a></li> 
                                    </ul>
                                    <ul class="nav-second-level" aria-expanded="false">
                                        <li><a href="<?= base_url(); ?>jb_coa/annexc">ANNEX C</a></li> 
                                    </ul>
                                </li> -->






                <!--                <li>
                                    <a href="javascript: void(0);" class="waves-effect">
                                        <i class="mdi mdi-format-underline"></i>
                                        <span> COA REPORTS </span>
                                        <span class="menu-arrow"></span>
                                    </a>
                                    <ul class="nav-second-level" aria-expanded="false">
                                        <li><a href="<?= base_url(); ?>jab_coa/home">HOME</a></li>
                                        <li><a href="<?= base_url(); ?>jab_coa/ppe">PPE</a></li>
                                        <li><a href="<?= base_url(); ?>jab_coa/ppe">TABS & ACORDIONS</a></li>
                                    </ul>
                                </li>-->







            </ul>
        </div> <!-- End Sidebar -->
        <div class="clearfix"></div>
    </div> <!-- Sidebar -left -->

</div> <!-- Left Sidebar End -->

<!-- ============================================================== -->
<!-- Start Page Content here -->
<!-- ============================================================== -->
<div class="content-page">
    <div class="content">
        <!-- Start Content-->
        <div class="container-f
             luid">


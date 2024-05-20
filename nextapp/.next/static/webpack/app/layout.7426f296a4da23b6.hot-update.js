"use strict";
/*
 * ATTENTION: An "eval-source-map" devtool has been used.
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file with attached SourceMaps in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
self["webpackHotUpdate_N_E"]("app/layout",{

/***/ "(app-pages-browser)/./app/component/Activity.js":
/*!***********************************!*\
  !*** ./app/component/Activity.js ***!
  \***********************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

eval(__webpack_require__.ts("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! react/jsx-dev-runtime */ \"(app-pages-browser)/./node_modules/next/dist/compiled/react/jsx-dev-runtime.js\");\n/* harmony import */ var activity_detector__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! activity-detector */ \"(app-pages-browser)/./node_modules/activity-detector/dist/activity-detector.js\");\n/* harmony import */ var react_redux__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! react-redux */ \"(app-pages-browser)/./node_modules/react-redux/dist/react-redux.mjs\");\n/* harmony import */ var _redux_reducer_login__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../redux/reducer/login */ \"(app-pages-browser)/./app/redux/reducer/login.js\");\n/* harmony import */ var next_navigation__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! next/navigation */ \"(app-pages-browser)/./node_modules/next/navigation.js\");\n/* harmony import */ var next_navigation__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(next_navigation__WEBPACK_IMPORTED_MODULE_3__);\n/* __next_internal_client_entry_do_not_use__ default auto */ \nvar _s = $RefreshSig$();\n\n\n\n\n\nconst Activity = ()=>{\n    _s();\n    const dispatch = (0,react_redux__WEBPACK_IMPORTED_MODULE_4__.useDispatch)();\n    const router = (0,next_navigation__WEBPACK_IMPORTED_MODULE_3__.useRouter)();\n    const isUserLoggedIn = (0,react_redux__WEBPACK_IMPORTED_MODULE_4__.useSelector)((state)=>state.login.isUserLoggedIn);\n    const activityDetector = (0,activity_detector__WEBPACK_IMPORTED_MODULE_1__[\"default\"])({\n        timeToIdle: 300000\n    });\n    activityDetector.on(\"idle\", ()=>{\n        console.log(\"The user is not interacting with the page\");\n        console.log(document.visibilityState);\n        if (isUserLoggedIn && document.visibilityState == \"visible\") {\n            console.log(\"its still enterd\");\n            dispatch((0,_redux_reducer_login__WEBPACK_IMPORTED_MODULE_2__.logout)());\n            localStorage.removeItem(\"token\");\n            setTimeout(()=>{\n                router.push(\"/\");\n            }, 5000);\n        }\n    });\n    return /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.Fragment, {}, void 0, false);\n};\n_s(Activity, \"mASsvU4tHRHFse9vyTFm9PNRRKY=\", false, function() {\n    return [\n        react_redux__WEBPACK_IMPORTED_MODULE_4__.useDispatch,\n        next_navigation__WEBPACK_IMPORTED_MODULE_3__.useRouter,\n        react_redux__WEBPACK_IMPORTED_MODULE_4__.useSelector\n    ];\n});\n_c = Activity;\n/* harmony default export */ __webpack_exports__[\"default\"] = (Activity);\nvar _c;\n$RefreshReg$(_c, \"Activity\");\n\n\n;\n    // Wrapped in an IIFE to avoid polluting the global scope\n    ;\n    (function () {\n        var _a, _b;\n        // Legacy CSS implementations will `eval` browser code in a Node.js context\n        // to extract CSS. For backwards compatibility, we need to check we're in a\n        // browser context before continuing.\n        if (typeof self !== 'undefined' &&\n            // AMP / No-JS mode does not inject these helpers:\n            '$RefreshHelpers$' in self) {\n            // @ts-ignore __webpack_module__ is global\n            var currentExports = module.exports;\n            // @ts-ignore __webpack_module__ is global\n            var prevSignature = (_b = (_a = module.hot.data) === null || _a === void 0 ? void 0 : _a.prevSignature) !== null && _b !== void 0 ? _b : null;\n            // This cannot happen in MainTemplate because the exports mismatch between\n            // templating and execution.\n            self.$RefreshHelpers$.registerExportsForReactRefresh(currentExports, module.id);\n            // A module can be accepted automatically based on its exports, e.g. when\n            // it is a Refresh Boundary.\n            if (self.$RefreshHelpers$.isReactRefreshBoundary(currentExports)) {\n                // Save the previous exports signature on update so we can compare the boundary\n                // signatures. We avoid saving exports themselves since it causes memory leaks (https://github.com/vercel/next.js/pull/53797)\n                module.hot.dispose(function (data) {\n                    data.prevSignature =\n                        self.$RefreshHelpers$.getRefreshBoundarySignature(currentExports);\n                });\n                // Unconditionally accept an update to this module, we'll check if it's\n                // still a Refresh Boundary later.\n                // @ts-ignore importMeta is replaced in the loader\n                module.hot.accept();\n                // This field is set when the previous version of this module was a\n                // Refresh Boundary, letting us know we need to check for invalidation or\n                // enqueue an update.\n                if (prevSignature !== null) {\n                    // A boundary can become ineligible if its exports are incompatible\n                    // with the previous exports.\n                    //\n                    // For example, if you add/remove/change exports, we'll want to\n                    // re-execute the importing modules, and force those components to\n                    // re-render. Similarly, if you convert a class component to a\n                    // function, we want to invalidate the boundary.\n                    if (self.$RefreshHelpers$.shouldInvalidateReactRefreshBoundary(prevSignature, self.$RefreshHelpers$.getRefreshBoundarySignature(currentExports))) {\n                        module.hot.invalidate();\n                    }\n                    else {\n                        self.$RefreshHelpers$.scheduleUpdate();\n                    }\n                }\n            }\n            else {\n                // Since we just executed the code for the module, it's possible that the\n                // new exports made it ineligible for being a boundary.\n                // We only care about the case when we were _previously_ a boundary,\n                // because we already accepted this update (accidental side effect).\n                var isNoLongerABoundary = prevSignature !== null;\n                if (isNoLongerABoundary) {\n                    module.hot.invalidate();\n                }\n            }\n        }\n    })();\n//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiKGFwcC1wYWdlcy1icm93c2VyKS8uL2FwcC9jb21wb25lbnQvQWN0aXZpdHkuanMiLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7O0FBQ3VEO0FBQ2I7QUFDQTtBQUNNO0FBQ0o7QUFFNUMsTUFBTUssV0FBVzs7SUFDZixNQUFNQyxXQUFXSix3REFBV0E7SUFDNUIsTUFBTUssU0FBU0gsMERBQVNBO0lBQ3hCLE1BQU1JLGlCQUFpQlAsd0RBQVdBLENBQUMsQ0FBQ1EsUUFBVUEsTUFBTUMsS0FBSyxDQUFDRixjQUFjO0lBQ3hFLE1BQU1HLG1CQUFtQlgsNkRBQXNCQSxDQUFDO1FBQzlDWSxZQUFZO0lBQ2Q7SUFFQUQsaUJBQWlCRSxFQUFFLENBQUMsUUFBUTtRQUMxQkMsUUFBUUMsR0FBRyxDQUFDO1FBRVpELFFBQVFDLEdBQUcsQ0FBQ0MsU0FBU0MsZUFBZTtRQUVwQyxJQUFJVCxrQkFBa0JRLFNBQVNDLGVBQWUsSUFBSSxXQUFXO1lBQzNESCxRQUFRQyxHQUFHLENBQUM7WUFDWlQsU0FBU0gsNERBQU1BO1lBQ2ZlLGFBQWFDLFVBQVUsQ0FBQztZQUN4QkMsV0FBVztnQkFDVGIsT0FBT2MsSUFBSSxDQUFDO1lBQ2QsR0FBRztRQUNMO0lBQ0Y7SUFFQSxxQkFBTztBQUNUO0dBeEJNaEI7O1FBQ2FILG9EQUFXQTtRQUNiRSxzREFBU0E7UUFDREgsb0RBQVdBOzs7S0FIOUJJO0FBMEJOLCtEQUFlQSxRQUFRQSxFQUFDIiwic291cmNlcyI6WyJ3ZWJwYWNrOi8vX05fRS8uL2FwcC9jb21wb25lbnQvQWN0aXZpdHkuanM/Y2UxNyJdLCJzb3VyY2VzQ29udGVudCI6WyJcInVzZSBjbGllbnRcIjtcclxuaW1wb3J0IGNyZWF0ZUFjdGl2aXR5RGV0ZWN0b3IgZnJvbSBcImFjdGl2aXR5LWRldGVjdG9yXCI7XHJcbmltcG9ydCB7IHVzZVNlbGVjdG9yIH0gZnJvbSBcInJlYWN0LXJlZHV4XCI7XHJcbmltcG9ydCB7IHVzZURpc3BhdGNoIH0gZnJvbSBcInJlYWN0LXJlZHV4XCI7XHJcbmltcG9ydCB7IGxvZ291dCB9IGZyb20gXCIuLi9yZWR1eC9yZWR1Y2VyL2xvZ2luXCI7XHJcbmltcG9ydCB7IHVzZVJvdXRlciB9IGZyb20gXCJuZXh0L25hdmlnYXRpb25cIjtcclxuXHJcbmNvbnN0IEFjdGl2aXR5ID0gKCkgPT4ge1xyXG4gIGNvbnN0IGRpc3BhdGNoID0gdXNlRGlzcGF0Y2goKTtcclxuICBjb25zdCByb3V0ZXIgPSB1c2VSb3V0ZXIoKTtcclxuICBjb25zdCBpc1VzZXJMb2dnZWRJbiA9IHVzZVNlbGVjdG9yKChzdGF0ZSkgPT4gc3RhdGUubG9naW4uaXNVc2VyTG9nZ2VkSW4pO1xyXG4gIGNvbnN0IGFjdGl2aXR5RGV0ZWN0b3IgPSBjcmVhdGVBY3Rpdml0eURldGVjdG9yKHtcclxuICAgIHRpbWVUb0lkbGU6IDMwMDAwMCwgLy8gd2FpdCA1IG1pbml0cyBvZiBpbmFjdGl2aXR5IHRvIGNvbnNpZGVyIHRoZSB1c2VyIGlzIGlkbGVcclxuICB9KTtcclxuXHJcbiAgYWN0aXZpdHlEZXRlY3Rvci5vbihcImlkbGVcIiwgKCkgPT4ge1xyXG4gICAgY29uc29sZS5sb2coXCJUaGUgdXNlciBpcyBub3QgaW50ZXJhY3Rpbmcgd2l0aCB0aGUgcGFnZVwiKTtcclxuXHJcbiAgICBjb25zb2xlLmxvZyhkb2N1bWVudC52aXNpYmlsaXR5U3RhdGUpO1xyXG5cclxuICAgIGlmIChpc1VzZXJMb2dnZWRJbiAmJiBkb2N1bWVudC52aXNpYmlsaXR5U3RhdGUgPT0gXCJ2aXNpYmxlXCIpIHtcclxuICAgICAgY29uc29sZS5sb2coXCJpdHMgc3RpbGwgZW50ZXJkXCIpO1xyXG4gICAgICBkaXNwYXRjaChsb2dvdXQoKSk7XHJcbiAgICAgIGxvY2FsU3RvcmFnZS5yZW1vdmVJdGVtKFwidG9rZW5cIik7XHJcbiAgICAgIHNldFRpbWVvdXQoKCkgPT4ge1xyXG4gICAgICAgIHJvdXRlci5wdXNoKFwiL1wiKTtcclxuICAgICAgfSwgNTAwMCk7XHJcbiAgICB9XHJcbiAgfSk7XHJcblxyXG4gIHJldHVybiA8PjwvPjtcclxufTtcclxuXHJcbmV4cG9ydCBkZWZhdWx0IEFjdGl2aXR5O1xyXG4iXSwibmFtZXMiOlsiY3JlYXRlQWN0aXZpdHlEZXRlY3RvciIsInVzZVNlbGVjdG9yIiwidXNlRGlzcGF0Y2giLCJsb2dvdXQiLCJ1c2VSb3V0ZXIiLCJBY3Rpdml0eSIsImRpc3BhdGNoIiwicm91dGVyIiwiaXNVc2VyTG9nZ2VkSW4iLCJzdGF0ZSIsImxvZ2luIiwiYWN0aXZpdHlEZXRlY3RvciIsInRpbWVUb0lkbGUiLCJvbiIsImNvbnNvbGUiLCJsb2ciLCJkb2N1bWVudCIsInZpc2liaWxpdHlTdGF0ZSIsImxvY2FsU3RvcmFnZSIsInJlbW92ZUl0ZW0iLCJzZXRUaW1lb3V0IiwicHVzaCJdLCJzb3VyY2VSb290IjoiIn0=\n//# sourceURL=webpack-internal:///(app-pages-browser)/./app/component/Activity.js\n"));

/***/ })

});